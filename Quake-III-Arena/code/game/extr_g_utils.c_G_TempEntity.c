
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {scalar_t__ eType; } ;
struct TYPE_9__ {char* classname; int freeAfterEvent; int eventTime; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_10__ {int time; } ;


 scalar_t__ ET_EVENTS ;
 int G_SetOrigin (TYPE_2__*,int ) ;
 TYPE_2__* G_Spawn () ;
 int SnapVector (int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ level ;
 int qtrue ;
 int trap_LinkEntity (TYPE_2__*) ;

gentity_t *G_TempEntity( vec3_t origin, int event ) {
 gentity_t *e;
 vec3_t snapped;

 e = G_Spawn();
 e->s.eType = ET_EVENTS + event;

 e->classname = "tempEntity";
 e->eventTime = level.time;
 e->freeAfterEvent = qtrue;

 VectorCopy( origin, snapped );
 SnapVector( snapped );
 G_SetOrigin( e, snapped );


 trap_LinkEntity( e );

 return e;
}
