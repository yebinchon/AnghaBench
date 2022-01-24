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
typedef  int /*<<< orphan*/  entity_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * entities ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 

entity_t *FUNC2( const char *target ) {
	int			i;
	const char	*n;

	for ( i = 0 ; i < num_entities ; i++ ) {
		n = FUNC0 (&entities[i], "targetname");
		if ( !FUNC1 (n, target) ) {
			return &entities[i];
		}
	}

	return NULL;
}