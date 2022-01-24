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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

FUNC1( char *szItem, int items, int maxitems, int itemsize )
{
	float	percentage = maxitems ? items * 100.0 / maxitems : 0.0;

   FUNC0("%-12s  %7i/%-7i  %7i/%-7i  (%4.1f%%)", 
				szItem, items, maxitems, items * itemsize, maxitems * itemsize, percentage );
	if ( percentage > 80.0 )
		FUNC0( "VERY FULL!\n" );
	else if ( percentage > 95.0 )
		FUNC0( "SIZE DANGER!\n" );
	else if ( percentage > 99.9 )
		FUNC0( "SIZE OVERFLOW!!!\n" );
	else
		FUNC0( "\n" );
	return items * itemsize;
}