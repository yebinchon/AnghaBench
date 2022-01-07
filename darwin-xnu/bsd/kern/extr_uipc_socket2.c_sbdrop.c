
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockbuf {int sb_flags; int sb_ctl; struct mbuf* sb_lastrecord; int * sb_mbtail; struct mbuf* sb_mb; TYPE_2__* sb_so; scalar_t__ sb_cc; scalar_t__ sb_mbcnt; } ;
struct mbuf {int m_len; int m_data; scalar_t__ m_type; struct mbuf* m_nextpkt; struct mbuf* m_next; } ;
struct TYPE_8__ {int so_flags; int so_flags1; TYPE_1__* so_msg_state; } ;
struct TYPE_7__ {scalar_t__ msg_serial_bytes; } ;


 int DBG_FNC_SBDROP ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EV_RWBYTES ;
 int IPPROTO_TCP ;
 int KERNEL_DEBUG (int,struct sockbuf*,int,int ,int ,int ) ;
 scalar_t__ MT_DATA ;
 scalar_t__ MT_HEADER ;
 scalar_t__ MT_OOBDATA ;
 int PF_MULTIPATH ;
 int SB_RECV ;
 int SB_SNDBYTE_CNT ;
 scalar_t__ SOCK_CHECK_DOM (TYPE_2__*,int ) ;
 scalar_t__ SOCK_CHECK_PROTO (TYPE_2__*,int ) ;
 int SOF1_POST_FALLBACK_SYNC ;
 int SOF_ENABLE_MSGS ;
 int SOF_MP_SUBFLOW ;
 int cfil_sock_buf_update (struct sockbuf*) ;
 int inp_decr_sndbytes_total (TYPE_2__*,int) ;
 int m_freem_list (struct mbuf*) ;
 int mptcp_fallback_sbdrop (TYPE_2__*,struct mbuf*,int) ;
 int mptcp_preproc_sbdrop (TYPE_2__*,struct mbuf*,unsigned int) ;
 int postevent (int ,struct sockbuf*,int ) ;
 int printf (char*) ;
 int sbfree (struct sockbuf*,struct mbuf*) ;

void
sbdrop(struct sockbuf *sb, int len)
{
 struct mbuf *m, *free_list, *ml;
 struct mbuf *next, *last;

 next = (m = sb->sb_mb) ? m->m_nextpkt : 0;
 KERNEL_DEBUG((DBG_FNC_SBDROP | DBG_FUNC_START), sb, len, 0, 0, 0);

 free_list = last = m;
 ml = (struct mbuf *)0;

 while (len > 0) {
  if (m == ((void*)0)) {
   if (next == ((void*)0)) {
    printf("sbdrop - count not zero\n");
    len = 0;




    sb->sb_cc = 0;
    sb->sb_mbcnt = 0;
    if (!(sb->sb_flags & SB_RECV) &&
        (sb->sb_so->so_flags & SOF_ENABLE_MSGS)) {
     sb->sb_so->so_msg_state->
         msg_serial_bytes = 0;
    }
    break;
   }
   m = last = next;
   next = m->m_nextpkt;
   continue;
  }
  if (m->m_len > len) {
   m->m_len -= len;
   m->m_data += len;
   sb->sb_cc -= len;

   if (sb->sb_flags & SB_SNDBYTE_CNT)
     inp_decr_sndbytes_total(sb->sb_so, len);
   if (m->m_type != MT_DATA && m->m_type != MT_HEADER &&
       m->m_type != MT_OOBDATA)
    sb->sb_ctl -= len;
   break;
  }
  len -= m->m_len;
  sbfree(sb, m);

  ml = m;
  m = m->m_next;
 }
 while (m && m->m_len == 0) {
  sbfree(sb, m);

  ml = m;
  m = m->m_next;
 }
 if (ml) {
  ml->m_next = (struct mbuf *)0;
  last->m_nextpkt = (struct mbuf *)0;
  m_freem_list(free_list);
 }
 if (m) {
  sb->sb_mb = m;
  m->m_nextpkt = next;
 } else {
  sb->sb_mb = next;
 }






 m = sb->sb_mb;
 if (m == ((void*)0)) {
  sb->sb_mbtail = ((void*)0);
  sb->sb_lastrecord = ((void*)0);
 } else if (m->m_nextpkt == ((void*)0)) {
  sb->sb_lastrecord = m;
 }





 postevent(0, sb, EV_RWBYTES);

 KERNEL_DEBUG((DBG_FNC_SBDROP | DBG_FUNC_END), sb, 0, 0, 0, 0);
}
