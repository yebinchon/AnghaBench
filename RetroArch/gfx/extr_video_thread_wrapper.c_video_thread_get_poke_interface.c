
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_poke_interface_t ;
struct TYPE_4__ {int poke; int driver_data; TYPE_1__* driver; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* poke_interface ) (int ,int *) ;} ;


 int stub1 (int ,int *) ;
 int thread_poke ;

__attribute__((used)) static void video_thread_get_poke_interface(
      void *data,
      const video_poke_interface_t **iface)
{
   thread_video_t *thr = (thread_video_t*)data;

   if (thr->driver->poke_interface)
   {
      *iface = &thread_poke;
      thr->driver->poke_interface(thr->driver_data, &thr->poke);
   }
   else
      *iface = ((void*)0);
}
