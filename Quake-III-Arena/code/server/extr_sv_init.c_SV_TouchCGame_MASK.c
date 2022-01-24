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
typedef  int /*<<< orphan*/  filename ;
typedef  scalar_t__ fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC3(void) {
	fileHandle_t	f;
	char filename[MAX_QPATH];

	FUNC0( filename, sizeof(filename), "vm/%s.qvm", "cgame" );
	FUNC2( filename, &f, qfalse );
	if ( f ) {
		FUNC1( f );
	}
}