
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int weaponInfo_t ;
typedef int centity_t ;


 int CG_RocketTrail (int *,int const*) ;

__attribute__((used)) static void CG_GrenadeTrail( centity_t *ent, const weaponInfo_t *wi ) {
 CG_RocketTrail( ent, wi );
}
