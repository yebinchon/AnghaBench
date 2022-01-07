
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mbuf {int dummy; } ;


 int ip_proto_dispatch_in (struct mbuf*,int,int ,int ) ;

void
ip_proto_dispatch_in_wrapper(struct mbuf *m, int hlen, u_int8_t proto)
{
 ip_proto_dispatch_in(m, hlen, proto, 0);
}
