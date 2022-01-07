
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clipHandle_t ;


 int CG_CM_INLINEMODEL ;
 int syscall (int ,int) ;

clipHandle_t trap_CM_InlineModel( int index ) {
 return syscall( CG_CM_INLINEMODEL, index );
}
