
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int co_active_handle ;
 int co_init_ () ;

cothread_t co_active()
{
 if ( !co_active_handle )
  co_init_();

 return co_active_handle;
}
