
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* dirty; void* sentinel; void* fixUpperEdge; int * nodeUp; TYPE_2__* eUp; } ;
struct TYPE_10__ {TYPE_3__* activeRegion; } ;
struct TYPE_9__ {int env; int dict; int regionPool; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 void* FALSE ;
 scalar_t__ bucketAlloc (int ) ;
 int * dictInsertBefore (int ,int *,TYPE_3__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static ActiveRegion *AddRegionBelow( TESStesselator *tess,
         ActiveRegion *regAbove,
         TESShalfEdge *eNewUp )






{
 ActiveRegion *regNew = (ActiveRegion *)bucketAlloc( tess->regionPool );
 if (regNew == ((void*)0)) longjmp(tess->env,1);

 regNew->eUp = eNewUp;
 regNew->nodeUp = dictInsertBefore( tess->dict, regAbove->nodeUp, regNew );
 if (regNew->nodeUp == ((void*)0)) longjmp(tess->env,1);
 regNew->fixUpperEdge = FALSE;
 regNew->sentinel = FALSE;
 regNew->dirty = FALSE;

 eNewUp->activeRegion = regNew;
 return regNew;
}
