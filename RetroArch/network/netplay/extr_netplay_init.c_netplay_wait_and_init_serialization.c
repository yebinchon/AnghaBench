
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state_size; } ;
typedef TYPE_1__ netplay_t ;


 int autosave_lock () ;
 int autosave_unlock () ;
 int core_run () ;
 scalar_t__ netplay_try_init_serialization (TYPE_1__*) ;

bool netplay_wait_and_init_serialization(netplay_t *netplay)
{
   int frame;

   if (netplay->state_size)
      return 1;


   for (frame = 0; frame < 60; frame++)
   {
      if (netplay_try_init_serialization(netplay))
         return 1;




      core_run();



   }

   return 0;
}
