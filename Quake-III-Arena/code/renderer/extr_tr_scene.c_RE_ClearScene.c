
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_firstSceneDlight ;
 int r_firstSceneEntity ;
 int r_firstScenePoly ;
 int r_numdlights ;
 int r_numentities ;
 int r_numpolys ;

void RE_ClearScene( void ) {
 r_firstSceneDlight = r_numdlights;
 r_firstSceneEntity = r_numentities;
 r_firstScenePoly = r_numpolys;
}
