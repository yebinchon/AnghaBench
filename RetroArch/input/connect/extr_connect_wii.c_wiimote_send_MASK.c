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
typedef  int uint8_t ;
struct connect_wii_wiimote_t {int unid; int /*<<< orphan*/  connection; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_control ) (int /*<<< orphan*/ ,int*,int) ;} ;

/* Variables and functions */
 int WM_BT_OUTPUT ; 
 int WM_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct connect_wii_wiimote_t* wm,
      uint8_t report_type, uint8_t* msg, int len)
{
   uint8_t buf[32] = {0};

   buf[0] = WM_SET_REPORT | WM_BT_OUTPUT;
   buf[1] = report_type;

   FUNC0(buf+2, msg, len);

#ifdef WIIMOTE_DBG
   int x;
   printf("[DEBUG] (id %i) SEND: (%x) %.2x ", wm->unid, buf[0], buf[1]);
   for (x = 2; x < len+2; ++x)
      printf("%.2x ", buf[x]);
   printf("\n");
#endif

   wm->driver->send_control(wm->connection, buf, len + 2);
   return 1;
}