
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_POINT_REACHABILITY_AREA_INDEX ;
 int syscall (int ,int ) ;

int trap_AAS_PointReachabilityAreaIndex(vec3_t point) {
 return syscall( BOTLIB_AAS_POINT_REACHABILITY_AREA_INDEX, point );
}
