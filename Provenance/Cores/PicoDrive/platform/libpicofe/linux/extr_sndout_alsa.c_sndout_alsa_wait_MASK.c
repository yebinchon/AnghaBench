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
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int buffer_size ; 
 int /*<<< orphan*/  handle ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
	snd_pcm_sframes_t left;

	while (1)
	{
		left = FUNC0(handle);
		if (left < 0 || left >= buffer_size / 2)
			break;

		FUNC1(4000);
	}
}