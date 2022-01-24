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
struct TYPE_2__ {int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ wiiusb_hid_t ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 char const* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static const char *FUNC1(void *data, unsigned pad)
{
   wiiusb_hid_t *hid = (wiiusb_hid_t*)data;
   if (pad >= MAX_USERS)
      return NULL;

   if (hid)
      return FUNC0(&hid->connections[pad], pad);

   return NULL;
}