
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int inuse; int (* use ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int target; scalar_t__ targetShaderNewName; scalar_t__ targetShaderName; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_11__ {double time; } ;


 int AddRemap (scalar_t__,scalar_t__,float) ;
 int BuildShaderStateConfig () ;
 int CS_SHADERSTATE ;
 int FOFS (int ) ;
 TYPE_1__* G_Find (TYPE_1__*,int ,int ) ;
 int G_Printf (char*) ;
 TYPE_5__ level ;
 int stub1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int targetname ;
 int trap_SetConfigstring (int ,int ) ;

void G_UseTargets( gentity_t *ent, gentity_t *activator ) {
 gentity_t *t;

 if ( !ent ) {
  return;
 }

 if (ent->targetShaderName && ent->targetShaderNewName) {
  float f = level.time * 0.001;
  AddRemap(ent->targetShaderName, ent->targetShaderNewName, f);
  trap_SetConfigstring(CS_SHADERSTATE, BuildShaderStateConfig());
 }

 if ( !ent->target ) {
  return;
 }

 t = ((void*)0);
 while ( (t = G_Find (t, FOFS(targetname), ent->target)) != ((void*)0) ) {
  if ( t == ent ) {
   G_Printf ("WARNING: Entity used itself.\n");
  } else {
   if ( t->use ) {
    t->use (t, ent, activator);
   }
  }
  if ( !ent->inuse ) {
   G_Printf("entity was removed while using targets\n");
   return;
  }
 }
}
