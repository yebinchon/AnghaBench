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
typedef  int /*<<< orphan*/  v ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC6( void ) {
	char	v[MAX_STRING_CHARS];

	FUNC5( v, FUNC4 ("nextdemo"), sizeof(v) );
	v[MAX_STRING_CHARS-1] = 0;
	FUNC2("CL_NextDemo: %s\n", v );
	if (!v[0]) {
		return;
	}

	FUNC3 ("nextdemo","");
	FUNC0 (v);
	FUNC0 ("\n");
	FUNC1();
}