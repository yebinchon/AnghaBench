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
struct timeval {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(void)
{
	struct timeval tval; // timing
	int thissec = 0, frames_done = 0;

	FUNC1();

	for (;;)
	{
		FUNC0(&tval, 0);

		if(thissec != tval.tv_sec)
		{
			thissec = tval.tv_sec;

			FUNC2("frames_done: %i\n", frames_done);
			frames_done = 0;
		}


		//gp2x_video_wait_vsync();
		//usleep(1); // sleeps a minimum of ~20ms
		//gp2x_video_flip(); // can be called ~430000 times/sec
		FUNC3(1000);
		frames_done++;
	}

}