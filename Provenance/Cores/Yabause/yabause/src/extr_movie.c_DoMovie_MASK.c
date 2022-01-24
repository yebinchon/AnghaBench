#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Status; int Frames; scalar_t__ ReadOnly; int /*<<< orphan*/  fp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int LagFrameFlag ; 
 TYPE_3__ Movie ; 
 int /*<<< orphan*/  MovieStatus ; 
 TYPE_2__ PORTDATA1 ; 
 TYPE_1__ PORTDATA2 ; 
 scalar_t__ Playback ; 
 scalar_t__ PlaybackFileOpened ; 
 scalar_t__ Recording ; 
 scalar_t__ RecordingFileOpened ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* Stopped ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int framelength ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int headersize ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(void) {

	int x;
   size_t num_read = 0;

	if (Movie.Status == 0)
		return;

	FUNC1();
	LagFrameFlag=1;
	FUNC2();

	//Read/Write Controller Data
	if(Movie.Status == Recording) {
		for (x = 0; x < 8; x++) {
			FUNC6(&PORTDATA1.data[x], 1, 1, Movie.fp);
		}
		for (x = 0; x < 8; x++) {
			FUNC6(&PORTDATA2.data[x], 1, 1, Movie.fp);
		}
	}

	if(Movie.Status == Playback) {
		for (x = 0; x < 8; x++) {
         num_read = FUNC4(&PORTDATA1.data[x], 1, 1, Movie.fp);
		}
		for (x = 0; x < 8; x++) {
         num_read = FUNC4(&PORTDATA2.data[x], 1, 1, Movie.fp);
		}

		//if we get to the end of the movie
		if(((FUNC5(Movie.fp)-headersize)/framelength) >= Movie.Frames) {
			FUNC3(Movie.fp);
			PlaybackFileOpened=0;
			Movie.Status = Stopped;
			FUNC0();
			FUNC7(MovieStatus, "Playback Stopped");
		}
	}

	//Stop Recording/Playback
	if(Movie.Status != Recording && RecordingFileOpened) {
		FUNC3(Movie.fp);
		RecordingFileOpened=0;
		Movie.Status = Stopped;
		FUNC7(MovieStatus, "Recording Stopped");
	}

	if(Movie.Status != Playback && PlaybackFileOpened && Movie.ReadOnly != 0) {
		FUNC3(Movie.fp);
		PlaybackFileOpened=0;
		Movie.Status = Stopped;
		FUNC7(MovieStatus, "Playback Stopped");
	}
}