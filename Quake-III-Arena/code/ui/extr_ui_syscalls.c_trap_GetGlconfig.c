
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glconfig_t ;


 int UI_GETGLCONFIG ;
 int syscall (int ,int *) ;

void trap_GetGlconfig( glconfig_t *glconfig ) {
 syscall( UI_GETGLCONFIG, glconfig );
}
