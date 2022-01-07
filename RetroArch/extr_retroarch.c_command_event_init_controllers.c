
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct retro_controller_description {char* desc; } ;
struct TYPE_7__ {unsigned int device; unsigned int port; } ;
typedef TYPE_2__ retro_ctx_controller_info_t ;
struct TYPE_6__ {unsigned int size; int * data; } ;
struct TYPE_8__ {TYPE_1__ ports; } ;
typedef TYPE_3__ rarch_system_info_t ;


 unsigned int MAX_USERS ;
 int MSG_CONNECTING_TO_PORT ;
 int MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT ;
 int RARCH_LOG (char*,int ,unsigned int,...) ;
 int RARCH_WARN (char*,unsigned int) ;


 int core_set_controller_port_device (TYPE_2__*) ;
 unsigned int input_config_get_device (unsigned int) ;
 struct retro_controller_description* libretro_find_controller_description (int *,unsigned int) ;
 int msg_hash_to_str (int ) ;
 TYPE_3__ runloop_system ;

__attribute__((used)) static void command_event_init_controllers(void)
{
   unsigned i;
   rarch_system_info_t *info = &runloop_system;

   for (i = 0; i < MAX_USERS; i++)
   {
      retro_ctx_controller_info_t pad;
      const char *ident = ((void*)0);
      bool set_controller = 0;
      const struct retro_controller_description *desc = ((void*)0);
      unsigned device = input_config_get_device(i);

      if (info)
      {
         if (i < info->ports.size)
            desc = libretro_find_controller_description(
                  &info->ports.data[i], device);
      }

      if (desc)
         ident = desc->desc;

      if (!ident)
      {



         if (device != 129 && device != 128)
         {



            RARCH_WARN("Input device ID %u is unknown to this "
                  "libretro implementation. Using RETRO_DEVICE_JOYPAD.\n",
                  device);
            device = 129;
         }
         ident = "Joypad";
      }

      switch (device)
      {
         case 128:
            RARCH_LOG("%s %u.\n",
                  msg_hash_to_str(MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT),
                  i + 1);
            set_controller = 1;
            break;
         case 129:



            if (info && info->ports.size != 0)
               set_controller = 1;
            break;
         default:



            RARCH_LOG("%s %u: %s (ID: %u).\n",
                    msg_hash_to_str(MSG_CONNECTING_TO_PORT),
                    device, ident, i+1);
            set_controller = 1;
            break;
      }

      if (set_controller && info && i < info->ports.size)
      {
         pad.device = device;
         pad.port = i;
         core_set_controller_port_device(&pad);
      }
   }
}
