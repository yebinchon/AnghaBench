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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_EXCEPTION_TYPE_DSI ; 
 int /*<<< orphan*/  OS_EXCEPTION_TYPE_ISI ; 
 int /*<<< orphan*/  OS_EXCEPTION_TYPE_PROGRAM ; 
 int /*<<< orphan*/  exception_dsi_cb ; 
 int /*<<< orphan*/  exception_isi_cb ; 
 int /*<<< orphan*/  exception_msgbuf ; 
 int /*<<< orphan*/  exception_prog_cb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
   exception_msgbuf = FUNC1(4096);
   FUNC0(OS_EXCEPTION_TYPE_DSI, exception_dsi_cb);
   FUNC0(OS_EXCEPTION_TYPE_ISI, exception_isi_cb);
   FUNC0(OS_EXCEPTION_TYPE_PROGRAM, exception_prog_cb);
   FUNC2();
}