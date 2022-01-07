
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_int32_t ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_idealsize; } ;
struct mptcb {int mpt_mpte; } ;


 int TCP_MAXWIN ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 void* min (scalar_t__,int) ;
 int mptcp_get_rcvscale (int ) ;
 int sbreserve (struct sockbuf*,scalar_t__) ;
 int tcp_autorcvbuf_max ;

__attribute__((used)) static void
mptcp_sbrcv_reserve(struct mptcb *mp_tp, struct sockbuf *sbrcv,
 u_int32_t newsize, u_int32_t idealsize)
{
 uint8_t rcvscale = mptcp_get_rcvscale(mp_tp->mpt_mpte);


 newsize = min(newsize, tcp_autorcvbuf_max);





 newsize = min(newsize, TCP_MAXWIN << rcvscale);


 if (newsize > sbrcv->sb_hiwat &&
  (sbreserve(sbrcv, newsize) == 1)) {
  sbrcv->sb_idealsize = min(max(sbrcv->sb_idealsize,
      (idealsize != 0) ? idealsize : newsize), tcp_autorcvbuf_max);




  sbrcv->sb_idealsize = min(sbrcv->sb_idealsize,
   TCP_MAXWIN << rcvscale);
 }
}
