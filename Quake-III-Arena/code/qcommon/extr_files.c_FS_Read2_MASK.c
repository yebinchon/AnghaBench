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
typedef  size_t fileHandle_t ;
struct TYPE_2__ {scalar_t__ streamed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int FUNC1 (void*,int,size_t) ; 
 int FUNC2 (void*,int,int,size_t) ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 TYPE_1__* fsh ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

int FUNC3( void *buffer, int len, fileHandle_t f ) {
	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	if ( !f ) {
		return 0;
	}
	if (fsh[f].streamed) {
		int r;
		fsh[f].streamed = qfalse;
		r = FUNC2( buffer, len, 1, f);
		fsh[f].streamed = qtrue;
		return r;
	} else {
		return FUNC1( buffer, len, f);
	}
}