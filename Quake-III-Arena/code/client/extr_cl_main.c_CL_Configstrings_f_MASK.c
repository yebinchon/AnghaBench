#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* stringOffsets; scalar_t__ stringData; } ;
struct TYPE_6__ {TYPE_1__ gameState; } ;
struct TYPE_5__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_CONFIGSTRINGS ; 
 TYPE_3__ cl ; 
 TYPE_2__ cls ; 

void FUNC1( void ) {
	int		i;
	int		ofs;

	if ( cls.state != CA_ACTIVE ) {
		FUNC0( "Not connected to a server.\n");
		return;
	}

	for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
		ofs = cl.gameState.stringOffsets[ i ];
		if ( !ofs ) {
			continue;
		}
		FUNC0( "%4i: %s\n", i, cl.gameState.stringData + ofs );
	}
}