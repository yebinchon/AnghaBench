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
struct TYPE_4__ {void* filelen; void* fileofs; } ;
typedef  TYPE_1__ lump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef  TYPE_2__ dheader_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( FILE *bspfile, dheader_t *header, int lumpnum, const void *data, int len ) {
	lump_t *lump;

	lump = &header->lumps[lumpnum];
	
	lump->fileofs = FUNC0( FUNC2(bspfile) );
	lump->filelen = FUNC0( len );
	FUNC1( bspfile, data, (len+3)&~3 );
}