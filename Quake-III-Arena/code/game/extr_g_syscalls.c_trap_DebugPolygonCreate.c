
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int G_DEBUG_POLYGON_CREATE ;
 int syscall (int ,int,int,int *) ;

int trap_DebugPolygonCreate(int color, int numPoints, vec3_t *points) {
 return syscall( G_DEBUG_POLYGON_CREATE, color, numPoints, points );
}
