
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct ipsec_tag {struct socket* socket; } ;


 int ENOBUFS ;
 struct ipsec_tag* ipsec_addaux (struct mbuf*) ;
 struct ipsec_tag* ipsec_findaux (struct mbuf*) ;
 int ipsec_optaux (struct mbuf*,struct ipsec_tag*) ;

int
ipsec_setsocket(struct mbuf *m, struct socket *so)
{
 struct ipsec_tag *tag;


 if (so) {
  tag = ipsec_addaux(m);
  if (!tag)
   return ENOBUFS;
 } else
  tag = ipsec_findaux(m);
 if (tag) {
  tag->socket = so;
  ipsec_optaux(m, tag);
 }
 return 0;
}
