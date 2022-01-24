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
typedef  int /*<<< orphan*/  cMsg ;
struct TYPE_2__ {int /*<<< orphan*/  serverId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 char* FUNC2 () ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 TYPE_1__ cl ; 
 char const* FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5( void ) {
	const char *pChecksums;
	char cMsg[MAX_INFO_VALUE];
	int i;

	// if we are pure we need to send back a command with our referenced pk3 checksums
	pChecksums = FUNC2();

	// "cp"
	// "Yf"
	FUNC1(cMsg, sizeof(cMsg), "Yf ");
	FUNC3(cMsg, sizeof(cMsg), FUNC4("%d ", cl.serverId) );
	FUNC3(cMsg, sizeof(cMsg), pChecksums);
	for (i = 0; i < 2; i++) {
		cMsg[i] += 10;
	}
	FUNC0( cMsg );
}