
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* classname; int inuse; int freetime; scalar_t__ neverFree; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_7__ {int time; } ;


 TYPE_4__ level ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int trap_UnlinkEntity (TYPE_1__*) ;

void G_FreeEntity( gentity_t *ed ) {
 trap_UnlinkEntity (ed);

 if ( ed->neverFree ) {
  return;
 }

 memset (ed, 0, sizeof(*ed));
 ed->classname = "freed";
 ed->freetime = level.time;
 ed->inuse = qfalse;
}
