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
struct TYPE_2__ {scalar_t__ Status; int ReadOnly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ Movie ; 
 scalar_t__ Playback ; 

void FUNC1(void) {

	if(Movie.Status == Playback) {

		if(Movie.ReadOnly == 1) 
		{
			Movie.ReadOnly=0;
			FUNC0("Movie is now read+write.");
		}
		else 
		{
			Movie.ReadOnly=1;
			FUNC0("Movie is now read only.");
		}
	}
}