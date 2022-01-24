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
struct TYPE_2__ {scalar_t__ Status; } ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 scalar_t__ Playback ; 
 scalar_t__ Recording ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 int FUNC3 (char const*) ; 

const char *FUNC4(const char *filename) {

	static char *retbuf = NULL;  // Save the pointer to avoid memory leaks
	if(Movie.Status == Recording || Movie.Status == Playback) {
		const size_t newsize = FUNC3(filename) + 5 + 1;
		FUNC0(retbuf);
		retbuf = FUNC1(newsize);
		if (!retbuf) {
			return NULL;  // out of memory
		}
		FUNC2(retbuf, "%smovie", filename);
		return retbuf;
	} else {
		return filename;  // unchanged
	}

}