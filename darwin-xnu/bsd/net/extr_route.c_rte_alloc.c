
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;


 int RTD_DEBUG ;
 struct rtentry* rte_alloc_debug () ;
 int rte_debug ;
 int rte_zone ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static struct rtentry *
rte_alloc(void)
{
 if (rte_debug & RTD_DEBUG)
  return (rte_alloc_debug());

 return ((struct rtentry *)zalloc(rte_zone));
}
