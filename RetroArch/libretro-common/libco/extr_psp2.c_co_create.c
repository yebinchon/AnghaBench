
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* cothread_t ;


 int co_active_buffer ;
 int * co_active_handle ;
 int co_init () ;
 int co_swap ;
 scalar_t__ malloc (unsigned int) ;

cothread_t co_create(unsigned int size, void(*entrypoint)(void))
   {
      unsigned long* handle = 0;
      if (!co_swap)
         co_init();
      if (!co_active_handle) co_active_handle = &co_active_buffer;
      size += 256;
      size &= ~15;

      if ((handle = (unsigned long*)malloc(size)))
      {
         unsigned long* p = (unsigned long*)((unsigned char*)handle + size);
         handle[8] = (unsigned long)p;
         handle[9] = (unsigned long)entrypoint;
      }

      return handle;
   }
