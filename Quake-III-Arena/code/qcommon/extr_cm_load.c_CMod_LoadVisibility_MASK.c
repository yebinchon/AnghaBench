#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int filelen; int fileofs; } ;
typedef  TYPE_1__ lump_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_5__ {int clusterBytes; int numClusters; void* visibility; int /*<<< orphan*/  vised; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int VIS_HEADER ; 
 TYPE_2__ cm ; 
 int /*<<< orphan*/ * cmod_base ; 
 int /*<<< orphan*/  h_high ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4( lump_t *l ) {
	int		len;
	byte	*buf;

    len = l->filelen;
	if ( !len ) {
		cm.clusterBytes = ( cm.numClusters + 31 ) & ~31;
		cm.visibility = FUNC2( cm.clusterBytes, h_high );
		FUNC1( cm.visibility, 255, cm.clusterBytes );
		return;
	}
	buf = cmod_base + l->fileofs;

	cm.vised = qtrue;
	cm.visibility = FUNC2( len, h_high );
	cm.numClusters = FUNC3( ((int *)buf)[0] );
	cm.clusterBytes = FUNC3( ((int *)buf)[1] );
	FUNC0 (cm.visibility, buf + VIS_HEADER, len - VIS_HEADER );
}