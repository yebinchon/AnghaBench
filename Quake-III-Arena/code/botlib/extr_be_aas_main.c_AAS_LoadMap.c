
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* loaded; void* initialized; } ;


 int AAS_FreeRoutingCaches () ;
 int AAS_InitAASLinkHeap () ;
 int AAS_InitAASLinkedEntities () ;
 int AAS_InitAlternativeRouting () ;
 int AAS_InitReachability () ;
 int AAS_InitSettings () ;
 int AAS_LoadFiles (char const*) ;
 int BLERR_NOERROR ;
 TYPE_1__ aasworld ;
 void* qfalse ;

int AAS_LoadMap(const char *mapname)
{
 int errnum;


 if (!mapname)
 {
  return 0;
 }

 aasworld.initialized = qfalse;



 AAS_FreeRoutingCaches();

 errnum = AAS_LoadFiles(mapname);
 if (errnum != BLERR_NOERROR)
 {
  aasworld.loaded = qfalse;
  return errnum;
 }

 AAS_InitSettings();

 AAS_InitAASLinkHeap();

 AAS_InitAASLinkedEntities();

 AAS_InitReachability();

 AAS_InitAlternativeRouting();

 return 0;
}
