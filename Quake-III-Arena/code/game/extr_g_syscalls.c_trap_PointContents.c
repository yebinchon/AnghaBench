
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int G_POINT_CONTENTS ;
 int syscall (int ,int const,int) ;

int trap_PointContents( const vec3_t point, int passEntityNum ) {
 return syscall( G_POINT_CONTENTS, point, passEntityNum );
}
