
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_tucookie {int dummy; } ;
struct inpcb {int dummy; } ;


 struct nstat_tucookie* nstat_tucookie_alloc_internal (struct inpcb*,int,int) ;

__attribute__((used)) static struct nstat_tucookie *
nstat_tucookie_alloc_ref(
    struct inpcb *inp)
{
 return nstat_tucookie_alloc_internal(inp, 1, 0);
}
