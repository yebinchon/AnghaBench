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
 char* FUNC0 (char*) ; 
 int MAX_FOUND_FILES ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2( char *name, char *list[MAX_FOUND_FILES], int nfiles ) {
	int		i;

	if ( nfiles == MAX_FOUND_FILES - 1 ) {
		return nfiles;
	}
	for ( i = 0 ; i < nfiles ; i++ ) {
		if ( !FUNC1( name, list[i] ) ) {
			return nfiles;		// allready in list
		}
	}
	list[nfiles] = FUNC0( name );
	nfiles++;

	return nfiles;
}