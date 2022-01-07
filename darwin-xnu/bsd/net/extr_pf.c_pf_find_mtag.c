
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_mtag {int dummy; } ;
struct mbuf {int dummy; } ;


 struct pf_mtag* m_pftag (struct mbuf*) ;

struct pf_mtag *
pf_find_mtag(struct mbuf *m)
{

 return (m_pftag(m));
}
