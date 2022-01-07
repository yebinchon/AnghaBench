
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float nextthink; int (* think ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gentity_t ;
struct TYPE_6__ {float time; } ;


 int G_Error (char*) ;
 TYPE_3__ level ;
 int stub1 (TYPE_1__*) ;

void G_RunThink (gentity_t *ent) {
 float thinktime;

 thinktime = ent->nextthink;
 if (thinktime <= 0) {
  return;
 }
 if (thinktime > level.time) {
  return;
 }

 ent->nextthink = 0;
 if (!ent->think) {
  G_Error ( "NULL ent->think");
 }
 ent->think (ent);
}
