#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* string; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_INIT ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * cl_cdkey ; 

__attribute__((used)) static void FUNC3( char *buf, int buflen ) {
	cvar_t	*fs;
	fs = FUNC1 ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
	if (FUNC2() && fs && fs->string[0] != 0) {
		FUNC0( buf, &cl_cdkey[16], 16);
		buf[16] = 0;
	} else {
		FUNC0( buf, cl_cdkey, 16);
		buf[16] = 0;
	}
}