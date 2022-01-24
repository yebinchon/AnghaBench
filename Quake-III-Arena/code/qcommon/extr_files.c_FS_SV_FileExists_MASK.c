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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 TYPE_1__* fs_homepath ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC3 (char*) ; 

qboolean FUNC4( const char *file )
{
	FILE *f;
	char *testpath;

	testpath = FUNC0( fs_homepath->string, file, "");
	testpath[FUNC3(testpath)-1] = '\0';

	f = FUNC2( testpath, "rb" );
	if (f) {
		FUNC1( f );
		return qtrue;
	}
	return qfalse;
}