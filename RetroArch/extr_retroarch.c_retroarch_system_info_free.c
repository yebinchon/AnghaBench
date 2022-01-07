
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int rarch_system_info_t ;
struct TYPE_13__ {int * set_state; int * callback; } ;
struct TYPE_11__ {int need_fullpath; int block_extract; int * valid_extensions; int * library_version; int * library_name; } ;
struct TYPE_10__ {scalar_t__ num_descriptors; int * descriptors; } ;
struct TYPE_9__ {void* data; scalar_t__ size; } ;
struct TYPE_8__ {void* data; scalar_t__ size; } ;
struct TYPE_12__ {TYPE_4__ info; TYPE_3__ mmaps; TYPE_2__ ports; TYPE_1__ subsystem; } ;


 TYPE_7__ audio_callback ;
 int free (void*) ;
 int memset (TYPE_5__*,int ,int) ;
 int * runloop_frontend_key_event ;
 int * runloop_key_event ;
 TYPE_5__ runloop_system ;

__attribute__((used)) static void retroarch_system_info_free(void)
{
   if (runloop_system.subsystem.data)
      free(runloop_system.subsystem.data);
   runloop_system.subsystem.data = ((void*)0);
   runloop_system.subsystem.size = 0;

   if (runloop_system.ports.data)
      free(runloop_system.ports.data);
   runloop_system.ports.data = ((void*)0);
   runloop_system.ports.size = 0;

   if (runloop_system.mmaps.descriptors)
      free((void *)runloop_system.mmaps.descriptors);
   runloop_system.mmaps.descriptors = ((void*)0);
   runloop_system.mmaps.num_descriptors = 0;

   runloop_key_event = ((void*)0);
   runloop_frontend_key_event = ((void*)0);

   audio_callback.callback = ((void*)0);
   audio_callback.set_state = ((void*)0);

   runloop_system.info.library_name = ((void*)0);
   runloop_system.info.library_version = ((void*)0);
   runloop_system.info.valid_extensions = ((void*)0);
   runloop_system.info.need_fullpath = 0;
   runloop_system.info.block_extract = 0;

   memset(&runloop_system, 0, sizeof(rarch_system_info_t));
}
