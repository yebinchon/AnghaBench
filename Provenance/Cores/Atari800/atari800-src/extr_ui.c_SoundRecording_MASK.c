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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  (* fMessage ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_1__* UI_driver ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
	if (!FUNC2()) {
		int no = 0;
		do {
			char buffer[32];
			FUNC5(buffer, sizeof(buffer), "atari%03d.wav", no);
			if (!FUNC4(buffer)) {
				/* file does not exist - we can create it */
				FUNC0(FUNC3(buffer)
					? "Recording sound to file \"%s\""
					: "Can't write to file \"%s\"", buffer);
				return;
			}
		} while (++no < 1000);
		UI_driver->fMessage("All atariXXX.wav files exist!", 1);
	}
	else {
		FUNC1();
		UI_driver->fMessage("Recording stopped", 1);
	}
}