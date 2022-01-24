#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct retro_controller_description {char* desc; } ;
struct TYPE_7__ {unsigned int device; unsigned int port; } ;
typedef  TYPE_2__ retro_ctx_controller_info_t ;
struct TYPE_6__ {unsigned int size; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {TYPE_1__ ports; } ;
typedef  TYPE_3__ rarch_system_info_t ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 int /*<<< orphan*/  MSG_CONNECTING_TO_PORT ; 
 int /*<<< orphan*/  MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
#define  RETRO_DEVICE_JOYPAD 129 
#define  RETRO_DEVICE_NONE 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 struct retro_controller_description* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ runloop_system ; 

__attribute__((used)) static void FUNC6(void)
{
   unsigned i;
   rarch_system_info_t *info = &runloop_system;

   for (i = 0; i < MAX_USERS; i++)
   {
      retro_ctx_controller_info_t pad;
      const char *ident                               = NULL;
      bool set_controller                             = false;
      const struct retro_controller_description *desc = NULL;
      unsigned device                                 = FUNC3(i);

      if (info)
      {
         if (i < info->ports.size)
            desc = FUNC4(
                  &info->ports.data[i], device);
      }

      if (desc)
         ident = desc->desc;

      if (!ident)
      {
         /* If we're trying to connect a completely unknown device,
          * revert back to JOYPAD. */

         if (device != RETRO_DEVICE_JOYPAD && device != RETRO_DEVICE_NONE)
         {
            /* Do not fix device,
             * because any use of dummy core will reset this,
             * which is not a good idea. */
            FUNC1("Input device ID %u is unknown to this "
                  "libretro implementation. Using RETRO_DEVICE_JOYPAD.\n",
                  device);
            device = RETRO_DEVICE_JOYPAD;
         }
         ident = "Joypad";
      }

      switch (device)
      {
         case RETRO_DEVICE_NONE:
            FUNC0("%s %u.\n",
                  FUNC5(MSG_VALUE_DISCONNECTING_DEVICE_FROM_PORT),
                  i + 1);
            set_controller = true;
            break;
         case RETRO_DEVICE_JOYPAD:
            /* Ideally these checks shouldn't be required but if we always
             * call core_set_controller_port_device input won't work on
             * cores that don't set port information properly */
            if (info && info->ports.size != 0)
               set_controller = true;
            break;
         default:
            /* Some cores do not properly range check port argument.
             * This is broken behavior of course, but avoid breaking
             * cores needlessly. */
            FUNC0("%s %u: %s (ID: %u).\n",
                    FUNC5(MSG_CONNECTING_TO_PORT),
                    device, ident, i+1);
            set_controller = true;
            break;
      }

      if (set_controller && info && i < info->ports.size)
      {
         pad.device     = device;
         pad.port       = i;
         FUNC2(&pad);
      }
   }
}