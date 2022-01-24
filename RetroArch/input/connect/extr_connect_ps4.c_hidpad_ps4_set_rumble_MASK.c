#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct hidpad_ps4_data {scalar_t__* motors; } ;
typedef  enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;

/* Variables and functions */
 int RETRO_RUMBLE_STRONG ; 
 int /*<<< orphan*/  FUNC0 (struct hidpad_ps4_data*) ; 

__attribute__((used)) static void FUNC1(void *data,
      enum retro_rumble_effect effect, uint16_t strength)
{
   /* TODO */
#if 0
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;
   unsigned idx = (effect == RETRO_RUMBLE_STRONG) ? 0 : 1;

   if (device && (device->motors[idx] != strength))
   {
      device->motors[idx] = strength;
      hidpad_ps4_send_control(device);
   }
#endif
}