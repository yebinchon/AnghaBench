
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {size_t entityNum; scalar_t__ startsolid; } ;
typedef TYPE_6__ trace_t ;
struct TYPE_15__ {int trBase; } ;
struct TYPE_16__ {int number; TYPE_4__ pos; } ;
struct TYPE_14__ {int maxs; int mins; } ;
struct TYPE_18__ {int clipmask; TYPE_5__ s; TYPE_3__ r; TYPE_2__* client; } ;
typedef TYPE_7__ gentity_t ;
struct TYPE_12__ {int origin; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;


 int MASK_SOLID ;
 TYPE_7__* g_entities ;
 int trap_Trace (TYPE_6__*,int ,int ,int ,int ,int ,int) ;

gentity_t *G_TestEntityPosition( gentity_t *ent ) {
 trace_t tr;
 int mask;

 if ( ent->clipmask ) {
  mask = ent->clipmask;
 } else {
  mask = MASK_SOLID;
 }
 if ( ent->client ) {
  trap_Trace( &tr, ent->client->ps.origin, ent->r.mins, ent->r.maxs, ent->client->ps.origin, ent->s.number, mask );
 } else {
  trap_Trace( &tr, ent->s.pos.trBase, ent->r.mins, ent->r.maxs, ent->s.pos.trBase, ent->s.number, mask );
 }

 if (tr.startsolid)
  return &g_entities[ tr.entityNum ];

 return ((void*)0);
}
