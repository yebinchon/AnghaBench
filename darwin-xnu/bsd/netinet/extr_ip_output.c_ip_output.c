
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip_out_args {int dummy; } ;
struct ip_moptions {int dummy; } ;


 int ip_output_list (struct mbuf*,int ,struct mbuf*,struct route*,int,struct ip_moptions*,struct ip_out_args*) ;

int
ip_output(struct mbuf *m0, struct mbuf *opt, struct route *ro, int flags,
    struct ip_moptions *imo, struct ip_out_args *ipoa)
{
 return (ip_output_list(m0, 0, opt, ro, flags, imo, ipoa));
}
