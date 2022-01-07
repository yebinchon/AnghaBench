
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct ipsec_tag {struct socket* socket; } ;


 struct ipsec_tag* ipsec_findaux (struct mbuf*) ;

struct socket *
ipsec_getsocket(struct mbuf *m)
{
 struct ipsec_tag *itag;

 itag = ipsec_findaux(m);
 if (itag)
  return itag->socket;
 else
  return ((void*)0);
}
