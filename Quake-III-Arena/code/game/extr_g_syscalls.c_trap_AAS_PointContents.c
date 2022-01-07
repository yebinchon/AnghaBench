
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_POINT_CONTENTS ;
 int syscall (int ,int ) ;

int trap_AAS_PointContents(vec3_t point) {
 return syscall( BOTLIB_AAS_POINT_CONTENTS, point );
}
