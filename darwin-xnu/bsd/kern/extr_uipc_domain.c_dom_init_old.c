
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct domain {int dom_flags; TYPE_1__* dom_old; } ;
struct TYPE_2__ {int (* dom_init ) () ;} ;


 int DOM_OLD ;
 int VERIFY (int) ;
 int stub1 () ;

__attribute__((used)) static void
dom_init_old(struct domain *dp)
{
 VERIFY(dp->dom_flags & DOM_OLD);
 VERIFY(dp->dom_old != ((void*)0));

 if (dp->dom_old->dom_init != ((void*)0))
  dp->dom_old->dom_init();
}
