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
typedef  int /*<<< orphan*/  uint8_t ;
struct connect_wii_wiimote_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM_CMD_CTRL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connect_wii_wiimote_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct connect_wii_wiimote_t* wm)
{
   uint8_t buf = 0;

   if (!wm || !FUNC1(wm))
      return;

#ifdef WIIMOTE_DBG
   printf("Requested wiimote status.\n");
#endif

   FUNC2(wm, WM_CMD_CTRL_STATUS, &buf, 1);
}