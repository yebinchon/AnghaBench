
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cothread_t ;


 int co_active_buffer ;
 int * co_active_handle ;

cothread_t co_active(void)
   {
      if (!co_active_handle) co_active_handle = &co_active_buffer;
      return co_active_handle;
   }
