
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ le_prev; struct pshmcache* le_next; } ;
struct pshmcache {TYPE_1__ pshm_hash; } ;


 int LIST_REMOVE (struct pshmcache*,int ) ;
 int panic (char*) ;
 int pshm_hash ;
 int pshmnument ;

__attribute__((used)) static void
pshm_cache_delete(struct pshmcache *pcp)
{






 LIST_REMOVE(pcp, pshm_hash);
 pcp->pshm_hash.le_prev = 0;
 pshmnument--;
}
