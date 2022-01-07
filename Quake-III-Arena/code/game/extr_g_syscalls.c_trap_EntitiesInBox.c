
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int G_ENTITIES_IN_BOX ;
 int syscall (int ,int const,int const,int*,int) ;

int trap_EntitiesInBox( const vec3_t mins, const vec3_t maxs, int *list, int maxcount ) {
 return syscall( G_ENTITIES_IN_BOX, mins, maxs, list, maxcount );
}
