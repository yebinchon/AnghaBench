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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char**) ; 
 int FUNC1 (char*) ; 

qboolean	FUNC2( const char *key, const char *defaultString, int *out ) {
	char		*s;
	qboolean	present;

	present = FUNC0( key, defaultString, &s );
	*out = FUNC1( s );
	return present;
}