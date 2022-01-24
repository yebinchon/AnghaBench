#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ blissbox_pad_type_t ;
struct TYPE_9__ {scalar_t__ vid; scalar_t__ pid; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ autoconfig_params_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ BLISSBOX_MAX_PAD_INDEX ; 
 scalar_t__ BLISSBOX_OLD_PID ; 
 scalar_t__ BLISSBOX_PID ; 
 scalar_t__ BLISSBOX_UPDATE_MODE_PID ; 
 scalar_t__ BLISSBOX_VID ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* blissbox_pad_types ; 
 TYPE_1__ const** blissbox_pads ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(autoconfig_params_t *params)
{
   if (params->vid == BLISSBOX_VID)
   {
      if (params->pid == BLISSBOX_UPDATE_MODE_PID)
         FUNC1("[Autoconf]: Bliss-Box in update mode detected. Ignoring.\n");
      else if (params->pid == BLISSBOX_OLD_PID)
         FUNC1("[Autoconf]: Bliss-Box 1.0 firmware detected. Please update to 2.0 or later.\n");
      else if (params->pid >= BLISSBOX_PID && params->pid <= BLISSBOX_PID + BLISSBOX_MAX_PAD_INDEX)
      {
         const blissbox_pad_type_t *pad;
         char name[255] = {0};
         int index      = params->pid - BLISSBOX_PID;

         FUNC1("[Autoconf]: Bliss-Box detected. Getting pad type...\n");

         if (blissbox_pads[index])
            pad = blissbox_pads[index];
         else
            pad = FUNC3(params->vid, params->pid);

         if (pad && !FUNC5(pad->name))
         {
            FUNC1("[Autoconf]: Found Bliss-Box pad type: %s (%d) in port#%d\n", pad->name, pad->index, index);

            if (params->name)
               FUNC2(params->name);

            /* override name given to autoconfig so it knows what kind of pad this is */
            FUNC6(name, "Bliss-Box 4-Play ", sizeof(name));
            FUNC6(name, pad->name, sizeof(name));

            params->name = FUNC4(name);

            blissbox_pads[index] = pad;
         }
         /* use NULL entry to mark as an unconnected port */
         else
            blissbox_pads[index] = &blissbox_pad_types[FUNC0(blissbox_pad_types) - 1];
      }
   }
}