
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aas_routingcache_t ;
struct TYPE_2__ {int numareas; int ** portalcache; } ;


 scalar_t__ GetClearedMemory (int) ;
 TYPE_1__ aasworld ;

void AAS_InitPortalCache(void)
{

 aasworld.portalcache = (aas_routingcache_t **) GetClearedMemory(
        aasworld.numareas * sizeof(aas_routingcache_t *));
}
