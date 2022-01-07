
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * target; scalar_t__ name; } ;


 int RUN_LOOP_COCOA ;
 int RUN_LOOP_POSIX ;
 int bt_register_packet_handler_ptr (int ) ;
 int btpad_packet_handler ;
 void* btstack_get_handle () ;
 int btstack_loaded ;
 int btstack_tested ;
 int dylib_close (void*) ;
 int dylib_proc (void*,scalar_t__) ;
 TYPE_1__* grabbers ;
 int run_loop_init_ptr (int ) ;

__attribute__((used)) static bool btstack_try_load(void)
{



   void *handle = ((void*)0);

   if (btstack_tested)
      return btstack_loaded;

   btstack_tested = 1;
   btstack_loaded = 0;

   handle = btstack_get_handle();

   if (!handle)
      return 0;
   run_loop_init_ptr(RUN_LOOP_POSIX);

   bt_register_packet_handler_ptr(btpad_packet_handler);

   btstack_loaded = 1;

   return 1;
}
