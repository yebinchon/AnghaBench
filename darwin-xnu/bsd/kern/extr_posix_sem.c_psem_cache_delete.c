
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * le_prev; struct psemcache* le_next; } ;
struct psemcache {TYPE_1__ psem_hash; } ;


 int LIST_REMOVE (struct psemcache*,int ) ;
 int panic (char*) ;
 int psem_hash ;
 int psemnument ;

__attribute__((used)) static void
psem_cache_delete(struct psemcache *pcp)
{






 LIST_REMOVE(pcp, psem_hash);
 pcp->psem_hash.le_prev = ((void*)0);
 psemnument--;
}
