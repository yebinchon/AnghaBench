
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {TYPE_2__* snap; } ;
struct TYPE_4__ {int* stats; int * ammo; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 size_t STAT_WEAPONS ;
 TYPE_3__ cg ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CG_WeaponSelectable( int i ) {
 if ( !cg.snap->ps.ammo[i] ) {
  return qfalse;
 }
 if ( ! (cg.snap->ps.stats[ STAT_WEAPONS ] & ( 1 << i ) ) ) {
  return qfalse;
 }

 return qtrue;
}
