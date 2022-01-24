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
struct TYPE_2__ {scalar_t__ Status; char* filename; int ReadOnly; int /*<<< orphan*/ * fp; int /*<<< orphan*/  Size; } ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* MovieStatus ; 
 scalar_t__ Playback ; 
 int PlaybackFileOpened ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ Recording ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ framecounter ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int FUNC8(const char *filename) {

	char* str=FUNC6(1024);

	if(Movie.Status == Recording)
		FUNC2();


	if ((Movie.fp = FUNC4(filename, "r+b")) == NULL)
	{
		FUNC5(str);
		return -1;
	}

	FUNC7(str, filename);
	Movie.filename=str;
	PlaybackFileOpened=1;
	framecounter=0;
	Movie.ReadOnly = 1;
	Movie.Status=Playback;
	Movie.Size = FUNC0(Movie.fp);
	FUNC7(MovieStatus, "Playback Started");
	FUNC1(Movie.fp);
	FUNC3();
	return 0;
}