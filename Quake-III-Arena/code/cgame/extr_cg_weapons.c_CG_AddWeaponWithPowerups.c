
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int customShader; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_6__ {int quadWeaponShader; int battleWeaponShader; int invisShader; } ;
struct TYPE_8__ {TYPE_1__ media; } ;


 int PW_BATTLESUIT ;
 int PW_INVIS ;
 int PW_QUAD ;
 TYPE_4__ cgs ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;

__attribute__((used)) static void CG_AddWeaponWithPowerups( refEntity_t *gun, int powerups ) {

 if ( powerups & ( 1 << PW_INVIS ) ) {
  gun->customShader = cgs.media.invisShader;
  trap_R_AddRefEntityToScene( gun );
 } else {
  trap_R_AddRefEntityToScene( gun );

  if ( powerups & ( 1 << PW_BATTLESUIT ) ) {
   gun->customShader = cgs.media.battleWeaponShader;
   trap_R_AddRefEntityToScene( gun );
  }
  if ( powerups & ( 1 << PW_QUAD ) ) {
   gun->customShader = cgs.media.quadWeaponShader;
   trap_R_AddRefEntityToScene( gun );
  }
 }
}
