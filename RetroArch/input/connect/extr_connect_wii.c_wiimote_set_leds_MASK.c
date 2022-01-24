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
typedef  int uint8_t ;
struct connect_wii_wiimote_t {int leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM_CMD_LED ; 
 int /*<<< orphan*/  FUNC0 (struct connect_wii_wiimote_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC2(struct connect_wii_wiimote_t* wm, int leds)
{
   uint8_t buf = {0};

   if (!wm || !FUNC0(wm))
      return;

   /* Remove the lower 4 bits because they control rumble. */
   wm->leds = (leds & 0xF0);
   buf      = wm->leds;

   FUNC1(wm, WM_CMD_LED, &buf, 1);
}