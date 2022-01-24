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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int snd_MusicVolume ; 

void FUNC2(int volume)
{
    if (volume < 0 || volume > 127)
    {
	FUNC0("Attempt to set music volume at %d",
		volume);
    }    

    FUNC1(127);
    FUNC1(volume);
    snd_MusicVolume = volume;
}