
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {int sb_mbcnt; int sb_flags; int sb_so; int sb_ctl; int sb_cc; } ;
struct TYPE_2__ {int ext_size; } ;
struct mbuf {scalar_t__ m_type; int m_flags; scalar_t__ m_len; TYPE_1__ m_ext; } ;


 scalar_t__ MSIZE ;
 int MSIZESHIFT ;
 scalar_t__ MT_DATA ;
 scalar_t__ MT_HEADER ;
 scalar_t__ MT_OOBDATA ;
 int M_EXT ;
 int OSAddAtomic (int,scalar_t__*) ;
 int SB_SNDBYTE_CNT ;
 int VERIFY (int) ;
 int inp_decr_sndbytes_total (int ,scalar_t__) ;
 scalar_t__ total_sbmb_cnt ;
 scalar_t__ total_sbmb_cnt_floor ;

void
sbfree(struct sockbuf *sb, struct mbuf *m)
{
 int cnt = -1;

 sb->sb_cc -= m->m_len;
 if (m->m_type != MT_DATA && m->m_type != MT_HEADER &&
     m->m_type != MT_OOBDATA)
  sb->sb_ctl -= m->m_len;
 sb->sb_mbcnt -= MSIZE;
 if (m->m_flags & M_EXT) {
  sb->sb_mbcnt -= m->m_ext.ext_size;
  cnt -= (m->m_ext.ext_size >> MSIZESHIFT);
 }
 OSAddAtomic(cnt, &total_sbmb_cnt);
 VERIFY(total_sbmb_cnt >= 0);
 if (total_sbmb_cnt < total_sbmb_cnt_floor)
  total_sbmb_cnt_floor = total_sbmb_cnt;





 if (sb->sb_flags & SB_SNDBYTE_CNT)
  inp_decr_sndbytes_total(sb->sb_so, m->m_len);
}
