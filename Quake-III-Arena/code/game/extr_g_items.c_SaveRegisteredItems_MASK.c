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
 int /*<<< orphan*/  CS_ITEMS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MAX_ITEMS ; 
 int bg_numItems ; 
 scalar_t__* itemRegistered ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2( void ) {
	char	string[MAX_ITEMS+1];
	int		i;
	int		count;

	count = 0;
	for ( i = 0 ; i < bg_numItems ; i++ ) {
		if ( itemRegistered[i] ) {
			count++;
			string[i] = '1';
		} else {
			string[i] = '0';
		}
	}
	string[ bg_numItems ] = 0;

	FUNC0( "%i items registered\n", count );
	FUNC1(CS_ITEMS, string);
}