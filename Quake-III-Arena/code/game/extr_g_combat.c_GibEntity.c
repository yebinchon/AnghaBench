
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ contents; } ;
struct TYPE_9__ {int eFlags; int eType; } ;
struct TYPE_10__ {TYPE_1__ r; TYPE_2__ s; int takedamage; int classname; struct TYPE_10__* activator; int inuse; } ;
typedef TYPE_3__ gentity_t ;


 int EF_KAMIKAZE ;
 int ET_INVISIBLE ;
 int EV_GIB_PLAYER ;
 int G_AddEvent (TYPE_3__*,int ,int) ;
 int G_FreeEntity (TYPE_3__*) ;
 int MAX_GENTITIES ;
 TYPE_3__* g_entities ;
 int qfalse ;
 scalar_t__ strcmp (int ,char*) ;

void GibEntity( gentity_t *self, int killer ) {
 gentity_t *ent;
 int i;


 if (self->s.eFlags & EF_KAMIKAZE) {

  for (i = 0; i < MAX_GENTITIES; i++) {
   ent = &g_entities[i];
   if (!ent->inuse)
    continue;
   if (ent->activator != self)
    continue;
   if (strcmp(ent->classname, "kamikaze timer"))
    continue;
   G_FreeEntity(ent);
   break;
  }
 }
 G_AddEvent( self, EV_GIB_PLAYER, killer );
 self->takedamage = qfalse;
 self->s.eType = ET_INVISIBLE;
 self->r.contents = 0;
}
