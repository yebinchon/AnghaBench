
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refdef_t ;


 int UI_R_RENDERSCENE ;
 int syscall (int ,int const*) ;

void trap_R_RenderScene( const refdef_t *fd ) {
 syscall( UI_R_RENDERSCENE, fd );
}
