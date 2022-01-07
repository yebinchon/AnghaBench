
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* spawn ) (TYPE_3__*) ;scalar_t__ name; } ;
typedef TYPE_1__ spawn_t ;
typedef int qboolean ;
struct TYPE_11__ {scalar_t__ classname; } ;
typedef TYPE_2__ gitem_t ;
struct TYPE_12__ {int classname; } ;
typedef TYPE_3__ gentity_t ;


 int G_Printf (char*,...) ;
 int G_SpawnItem (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* bg_itemlist ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* spawns ;
 int strcmp (scalar_t__,int ) ;
 int stub1 (TYPE_3__*) ;

qboolean G_CallSpawn( gentity_t *ent ) {
 spawn_t *s;
 gitem_t *item;

 if ( !ent->classname ) {
  G_Printf ("G_CallSpawn: NULL classname\n");
  return qfalse;
 }


 for ( item=bg_itemlist+1 ; item->classname ; item++ ) {
  if ( !strcmp(item->classname, ent->classname) ) {
   G_SpawnItem( ent, item );
   return qtrue;
  }
 }


 for ( s=spawns ; s->name ; s++ ) {
  if ( !strcmp(s->name, ent->classname) ) {

   s->spawn(ent);
   return qtrue;
  }
 }
 G_Printf ("%s doesn't have a spawn function\n", ent->classname);
 return qfalse;
}
