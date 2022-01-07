
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int origin; } ;
struct TYPE_7__ {int absmin; } ;
struct TYPE_9__ {struct TYPE_9__* nextTrain; TYPE_2__ s; int target; int classname; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int FOFS (int ) ;
 void* G_Find (TYPE_3__*,int ,int ) ;
 int G_Printf (char*,int ) ;
 int Reached_Train (TYPE_3__*) ;
 scalar_t__ strcmp (int ,char*) ;
 int targetname ;
 int vtos (int ) ;

void Think_SetupTrainTargets( gentity_t *ent ) {
 gentity_t *path, *next, *start;

 ent->nextTrain = G_Find( ((void*)0), FOFS(targetname), ent->target );
 if ( !ent->nextTrain ) {
  G_Printf( "func_train at %s with an unfound target\n",
   vtos(ent->r.absmin) );
  return;
 }

 start = ((void*)0);
 for ( path = ent->nextTrain ; path != start ; path = next ) {
  if ( !start ) {
   start = path;
  }

  if ( !path->target ) {
   G_Printf( "Train corner at %s without a target\n",
    vtos(path->s.origin) );
   return;
  }




  next = ((void*)0);
  do {
   next = G_Find( next, FOFS(targetname), path->target );
   if ( !next ) {
    G_Printf( "Train corner at %s without a target path_corner\n",
     vtos(path->s.origin) );
    return;
   }
  } while ( strcmp( next->classname, "path_corner" ) );

  path->nextTrain = next;
 }


 Reached_Train( ent );
}
