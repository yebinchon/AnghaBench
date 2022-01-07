
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * nodeUp; void* dirty; int sentinel; void* fixUpperEdge; void* inside; scalar_t__ windingNumber; TYPE_4__* eUp; } ;
struct TYPE_12__ {TYPE_2__* Dst; TYPE_1__* Org; } ;
struct TYPE_11__ {int env; int dict; TYPE_2__* event; int mesh; int regionPool; } ;
struct TYPE_10__ {void* t; void* s; } ;
struct TYPE_9__ {void* t; void* s; } ;
typedef TYPE_3__ TESStesselator ;
typedef void* TESSreal ;
typedef TYPE_4__ TESShalfEdge ;
typedef TYPE_5__ ActiveRegion ;


 void* FALSE ;
 int TRUE ;
 scalar_t__ bucketAlloc (int ) ;
 int * dictInsert (int ,TYPE_5__*) ;
 int longjmp (int ,int) ;
 TYPE_4__* tessMeshMakeEdge (int ) ;

__attribute__((used)) static void AddSentinel( TESStesselator *tess, TESSreal smin, TESSreal smax, TESSreal t )




{
 TESShalfEdge *e;
 ActiveRegion *reg = (ActiveRegion *)bucketAlloc( tess->regionPool );
 if (reg == ((void*)0)) longjmp(tess->env,1);

 e = tessMeshMakeEdge( tess->mesh );
 if (e == ((void*)0)) longjmp(tess->env,1);

 e->Org->s = smax;
 e->Org->t = t;
 e->Dst->s = smin;
 e->Dst->t = t;
 tess->event = e->Dst;

 reg->eUp = e;
 reg->windingNumber = 0;
 reg->inside = FALSE;
 reg->fixUpperEdge = FALSE;
 reg->sentinel = TRUE;
 reg->dirty = FALSE;
 reg->nodeUp = dictInsert( tess->dict, reg );
 if (reg->nodeUp == ((void*)0)) longjmp(tess->env,1);
}
