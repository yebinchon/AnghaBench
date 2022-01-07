
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int markFragment_t ;


 int CG_CM_MARKFRAGMENTS ;
 int syscall (int ,int,int const*,int const,int,int ,int,int *) ;

int trap_CM_MarkFragments( int numPoints, const vec3_t *points,
    const vec3_t projection,
    int maxPoints, vec3_t pointBuffer,
    int maxFragments, markFragment_t *fragmentBuffer ) {
 return syscall( CG_CM_MARKFRAGMENTS, numPoints, points, projection, maxPoints, pointBuffer, maxFragments, fragmentBuffer );
}
