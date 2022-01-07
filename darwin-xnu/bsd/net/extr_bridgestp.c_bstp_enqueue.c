
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
typedef scalar_t__ errno_t ;


 int M_PROTO1 ;
 scalar_t__ ifnet_output_raw (struct ifnet*,int ,struct mbuf*) ;
 int ifnet_stat_increment_out (struct ifnet*,int,int ,int) ;

__attribute__((used)) static void
bstp_enqueue(struct ifnet *dst_ifp, struct mbuf *m)
{
 errno_t error = 0;
 u_int32_t len = m->m_pkthdr.len;

 m->m_flags |= M_PROTO1;

 error = ifnet_output_raw(dst_ifp, 0, m);
 if (error == 0) {
  (void) ifnet_stat_increment_out(dst_ifp, 1, len, 0);
 } else {
  (void) ifnet_stat_increment_out(dst_ifp, 0, 0, 1);
 }
}
