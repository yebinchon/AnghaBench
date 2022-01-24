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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ LWP_THREAD_NULL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ _kbd_buf_thread ; 
 scalar_t__ _kbd_thread ; 
 int _kbd_thread_quit ; 
 int _kbd_thread_running ; 
 int /*<<< orphan*/ * _sc_map ; 
 scalar_t__ _sc_maplen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

s32 FUNC5(void)
{
	if (_kbd_thread_running) {
		_kbd_thread_quit = true;

		if(_kbd_thread != LWP_THREAD_NULL)
			FUNC1(_kbd_thread, NULL);
		if(_kbd_buf_thread != LWP_THREAD_NULL)
			FUNC1(_kbd_buf_thread, NULL);

		_kbd_thread_running = false;
	}

	FUNC2();
	FUNC0();
	FUNC3();

	if (_sc_map) {
		FUNC4(_sc_map);
		_sc_map = NULL;
		_sc_maplen = 0;
	}

	return 1;
}