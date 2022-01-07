
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int patches; int brushes; } ;
typedef TYPE_1__ entity_t ;


 int BeginBSPFile () ;
 int ProcessSubModel () ;
 int ProcessWorldModel () ;
 TYPE_1__* entities ;
 size_t entity_num ;
 size_t num_entities ;
 int nummodels ;
 int qfalse ;
 int qprintf (char*,int ) ;
 int verbose ;
 int verboseentities ;

void ProcessModels (void)
{
 qboolean oldVerbose;
 entity_t *entity;

 oldVerbose = verbose;

 BeginBSPFile ();

 for ( entity_num=0 ; entity_num< num_entities ; entity_num++ ) {
  entity = &entities[entity_num];

  if ( !entity->brushes && !entity->patches ) {
   continue;
  }

  qprintf ("############### model %i ###############\n", nummodels);
  if (entity_num == 0)
   ProcessWorldModel ();
  else
   ProcessSubModel ();

  if (!verboseentities)
   verbose = qfalse;
 }

 verbose = oldVerbose;
}
