
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int renderfx; } ;
struct TYPE_6__ {int* ambientLight; int* directedLight; TYPE_1__ e; } ;
typedef TYPE_2__ trRefEntity_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int,int) ;} ;


 int PRINT_ALL ;
 int RF_FIRST_PERSON ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int,int) ;

__attribute__((used)) static void LogLight( trRefEntity_t *ent ) {
 int max1, max2;

 if ( !(ent->e.renderfx & RF_FIRST_PERSON ) ) {
  return;
 }

 max1 = ent->ambientLight[0];
 if ( ent->ambientLight[1] > max1 ) {
  max1 = ent->ambientLight[1];
 } else if ( ent->ambientLight[2] > max1 ) {
  max1 = ent->ambientLight[2];
 }

 max2 = ent->directedLight[0];
 if ( ent->directedLight[1] > max2 ) {
  max2 = ent->directedLight[1];
 } else if ( ent->directedLight[2] > max2 ) {
  max2 = ent->directedLight[2];
 }

 ri.Printf( PRINT_ALL, "amb:%i  dir:%i\n", max1, max2 );
}
