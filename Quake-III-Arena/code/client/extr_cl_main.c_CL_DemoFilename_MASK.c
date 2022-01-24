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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  MAX_OSPATH ; 

void FUNC1( int number, char *fileName ) {
	int		a,b,c,d;

	if ( number < 0 || number > 9999 ) {
		FUNC0( fileName, MAX_OSPATH, "demo9999.tga" );
		return;
	}

	a = number / 1000;
	number -= a*1000;
	b = number / 100;
	number -= b*100;
	c = number / 10;
	number -= c*10;
	d = number;

	FUNC0( fileName, MAX_OSPATH, "demo%i%i%i%i"
		, a, b, c, d );
}