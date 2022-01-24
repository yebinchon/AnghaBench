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
struct TYPE_2__ {char* downloadList; int /*<<< orphan*/  downloadRestart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ clc ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 

void FUNC5(void) {
	char *s;
	char *remoteName, *localName;

	// We are looking to start a download here
	if (*clc.downloadList) {
		s = clc.downloadList;

		// format is:
		//  @remotename@localname@remotename@localname, etc.

		if (*s == '@')
			s++;
		remoteName = s;
		
		if ( (s = FUNC3(s, '@')) == NULL ) {
			FUNC1();
			return;
		}

		*s++ = 0;
		localName = s;
		if ( (s = FUNC3(s, '@')) != NULL )
			*s++ = 0;
		else
			s = localName + FUNC4(localName); // point at the nul byte

		FUNC0( localName, remoteName );

		clc.downloadRestart = qtrue;

		// move over the rest
		FUNC2( clc.downloadList, s, FUNC4(s) + 1);

		return;
	}

	FUNC1();
}