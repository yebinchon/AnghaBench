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
typedef  int /*<<< orphan*/  str ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_CVAR_VALUE_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 TYPE_1__ g_banIPs ; 
 char* FUNC2 (char*,char) ; 

void FUNC3(void) 
{
	char *s, *t;
	char		str[MAX_CVAR_VALUE_STRING];

	FUNC1( str, g_banIPs.string, sizeof(str) );

	for (t = s = g_banIPs.string; *t; /* */ ) {
		s = FUNC2(s, ' ');
		if (!s)
			break;
		while (*s == ' ')
			*s++ = 0;
		if (*t)
			FUNC0( t );
		t = s;
	}
}