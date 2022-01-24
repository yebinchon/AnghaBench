#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/ * slots; } ;
typedef  TYPE_1__ libusb_hid_t ;
typedef  enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(void *data, unsigned pad,
      enum retro_rumble_effect effect, uint16_t strength)
{
   libusb_hid_t        *hid   = (libusb_hid_t*)data;
   if (!hid)
      return false;
   return FUNC0(&hid->slots[pad], pad, effect, strength);
}