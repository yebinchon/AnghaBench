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
struct TYPE_2__ {scalar_t__ Status; char* filename; int /*<<< orphan*/ * fp; scalar_t__ Rerecords; } ;

/* Variables and functions */
 TYPE_1__ Movie ; 
 char* MovieStatus ; 
 scalar_t__ Playback ; 
 scalar_t__ Recording ; 
 int RecordingFileOpened ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ framecounter ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

int FUNC7(const char *filename) {

	char* str=FUNC5(1024);

	if(Movie.Status == Playback)
		FUNC0();

	if ((Movie.fp = FUNC3(filename, "w+b")) == NULL)
	{
		FUNC4(str);
		return -1;
	}

	FUNC6(str, filename);
	Movie.filename=str;
	RecordingFileOpened=1;
	framecounter=0;
	Movie.Status=Recording;
	FUNC6(MovieStatus, "Recording Started");
	Movie.Rerecords=0;
	FUNC1(Movie.fp);
	FUNC2();
	return 0;
}