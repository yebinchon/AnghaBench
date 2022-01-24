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
typedef  int /*<<< orphan*/  byte ;
struct TYPE_4__ {TYPE_1__* lumps; } ;
struct TYPE_3__ {int filelen; int fileofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* header ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 

int FUNC2 (int lump, void *dest, int size, int maxsize)
{
	int		length, ofs;

	length = header->lumps[lump].filelen;
	ofs = header->lumps[lump].fileofs;
	
	if (length % size)
		FUNC0 ("Sin_LoadBSPFile: odd lump size");

   if ((length/size) > maxsize)
      FUNC0 ("Sin_LoadBSPFile: exceeded max size for lump %d size %d > maxsize %d\n", lump, (length/size), maxsize );
	
	FUNC1 (dest, (byte *)header + ofs, length);

	return length / size;
}