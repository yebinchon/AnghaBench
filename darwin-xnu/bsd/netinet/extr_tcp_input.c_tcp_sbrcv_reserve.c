
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tcpcb {scalar_t__ rcv_scale; } ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_idealsize; } ;


 scalar_t__ TCP_MAXWIN ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 void* min (scalar_t__,scalar_t__) ;
 int sbreserve (struct sockbuf*,scalar_t__) ;

__attribute__((used)) static void
tcp_sbrcv_reserve(struct tcpcb *tp, struct sockbuf *sbrcv,
 u_int32_t newsize, u_int32_t idealsize, u_int32_t rcvbuf_max)
{

 newsize = min(newsize, rcvbuf_max);





 newsize = min(newsize, TCP_MAXWIN << tp->rcv_scale);


 if (newsize > sbrcv->sb_hiwat &&
  (sbreserve(sbrcv, newsize) == 1)) {
  sbrcv->sb_idealsize = min(max(sbrcv->sb_idealsize,
      (idealsize != 0) ? idealsize : newsize), rcvbuf_max);




  sbrcv->sb_idealsize = min(sbrcv->sb_idealsize,
   TCP_MAXWIN << tp->rcv_scale);
 }
}
