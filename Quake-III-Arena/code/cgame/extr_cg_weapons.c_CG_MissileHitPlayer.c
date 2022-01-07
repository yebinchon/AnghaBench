
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_Bleed (int ,int) ;
 int CG_MissileHitWall (int,int ,int ,int ,int ) ;
 int IMPACTSOUND_FLESH ;






void CG_MissileHitPlayer( int weapon, vec3_t origin, vec3_t dir, int entityNum ) {
 CG_Bleed( origin, entityNum );



 switch ( weapon ) {
 case 131:
 case 128:





  CG_MissileHitWall( weapon, 0, origin, dir, IMPACTSOUND_FLESH );
  break;
 default:
  break;
 }
}
