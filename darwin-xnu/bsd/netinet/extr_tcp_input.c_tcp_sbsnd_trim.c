
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sockbuf {int sb_flags; scalar_t__ sb_idealsize; scalar_t__ sb_hiwat; scalar_t__ sb_cc; } ;


 int SB_AUTOSIZE ;
 int SB_TRIM ;
 int sbreserve (struct sockbuf*,scalar_t__) ;
 int tcp_do_autosendbuf ;

void
tcp_sbsnd_trim(struct sockbuf *sbsnd)
{
 if (tcp_do_autosendbuf == 1 &&
  ((sbsnd->sb_flags & (SB_AUTOSIZE | SB_TRIM)) ==
   (SB_AUTOSIZE | SB_TRIM)) &&
  (sbsnd->sb_idealsize > 0) &&
  (sbsnd->sb_hiwat > sbsnd->sb_idealsize)) {
  u_int32_t trim = 0;
  if (sbsnd->sb_cc <= sbsnd->sb_idealsize) {
   trim = sbsnd->sb_hiwat - sbsnd->sb_idealsize;
  } else {
   trim = sbsnd->sb_hiwat - sbsnd->sb_cc;
  }
  sbreserve(sbsnd, (sbsnd->sb_hiwat - trim));
 }
 if (sbsnd->sb_hiwat <= sbsnd->sb_idealsize)
  sbsnd->sb_flags &= ~(SB_TRIM);
}
