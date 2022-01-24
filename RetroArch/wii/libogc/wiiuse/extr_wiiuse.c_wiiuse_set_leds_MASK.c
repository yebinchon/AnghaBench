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
typedef  int ubyte ;
struct wiimote_t {int leds; } ;
typedef  int /*<<< orphan*/  cmd_blk_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*) ; 
 int /*<<< orphan*/  WM_CMD_LED ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct wiimote_t *wm,int leds,cmd_blk_cb cb)
{
	ubyte buf;

	if(!wm || !FUNC0(wm)) return;

	wm->leds = (leds&0xf0);

	buf = wm->leds;
	FUNC1(wm,WM_CMD_LED,&buf,1,cb);
}