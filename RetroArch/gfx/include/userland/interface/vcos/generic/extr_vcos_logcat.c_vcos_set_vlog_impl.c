
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * VCOS_VLOG_IMPL_FUNC_T ;


 int * vcos_vlog_default_impl ;
 int * vcos_vlog_impl_func ;

void vcos_set_vlog_impl( VCOS_VLOG_IMPL_FUNC_T vlog_impl_func )
{
   if ( vlog_impl_func == ((void*)0) )
   {
      vcos_vlog_impl_func = vcos_vlog_default_impl;
   }
   else
   {
      vcos_vlog_impl_func = vlog_impl_func;
   }
}
