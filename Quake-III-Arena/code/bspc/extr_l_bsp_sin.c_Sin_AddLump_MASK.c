#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* filelen; void* fileofs; } ;
typedef  TYPE_1__ sin_lump_t ;
struct TYPE_4__ {TYPE_1__* lumps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* header ; 
 int /*<<< orphan*/  wadfile ; 

void FUNC4 (int lumpnum, void *data, int len, int size, int maxsize)
{
	sin_lump_t *lump;
	int totallength;

	totallength = len*size;

	if (len > maxsize)
		FUNC0 ("Sin_WriteBSPFile: exceeded max size for lump %d size %d > maxsize %d\n", lumpnum, len, maxsize );

	lump = &header->lumps[lumpnum];
	
	lump->fileofs = FUNC1( FUNC3(wadfile) );
	lump->filelen = FUNC1(totallength);
	FUNC2 (wadfile, data, (totallength+3)&~3);
}