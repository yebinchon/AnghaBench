
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_CM_NUMINLINEMODELS ;
 int syscall (int ) ;

int trap_CM_NumInlineModels( void ) {
 return syscall( CG_CM_NUMINLINEMODELS );
}
