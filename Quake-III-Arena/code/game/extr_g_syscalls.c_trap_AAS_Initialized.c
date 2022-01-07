
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_INITIALIZED ;
 int syscall (int ) ;

int trap_AAS_Initialized(void) {
 return syscall( BOTLIB_AAS_INITIALIZED );
}
