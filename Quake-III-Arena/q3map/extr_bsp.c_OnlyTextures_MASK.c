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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  name ; 
 int numDrawSurfaces ; 
 char* source ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

void FUNC5( void ) {		// FIXME!!!
	char	out[1024];
	int		i;

	FUNC0( "-onlytextures isn't working now..." );

	FUNC4 (out, "%s.bsp", source);

	FUNC2 (name);

	FUNC1 (out);

	// replace all the drawsurface shader names
	for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
	}

	FUNC3 (out);
}