#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t textureoffset; size_t rowoffset; int /*<<< orphan*/ * sector; void* midtexture; void* bottomtexture; void* toptexture; } ;
typedef  TYPE_1__ side_t ;
struct TYPE_7__ {int /*<<< orphan*/  sector; int /*<<< orphan*/  midtexture; int /*<<< orphan*/  bottomtexture; int /*<<< orphan*/  toptexture; int /*<<< orphan*/  rowoffset; int /*<<< orphan*/  textureoffset; } ;
typedef  TYPE_2__ mapsidedef_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 size_t FRACBITS ; 
 int /*<<< orphan*/  PU_LEVEL ; 
 int /*<<< orphan*/  PU_STATIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numsides ; 
 int /*<<< orphan*/ * sectors ; 
 TYPE_1__* sides ; 

void FUNC7 (int lump)
{
    byte*		data;
    int			i;
    mapsidedef_t*	msd;
    side_t*		sd;
	
    numsides = FUNC3 (lump) / sizeof(mapsidedef_t);
    sides = FUNC5 (numsides*sizeof(side_t),PU_LEVEL,0);	
    FUNC6 (sides, 0, numsides*sizeof(side_t));
    data = FUNC2 (lump,PU_STATIC);
	
    msd = (mapsidedef_t *)data;
    sd = sides;
    for (i=0 ; i<numsides ; i++, msd++, sd++)
    {
	sd->textureoffset = FUNC1(msd->textureoffset)<<FRACBITS;
	sd->rowoffset = FUNC1(msd->rowoffset)<<FRACBITS;
	sd->toptexture = FUNC0(msd->toptexture);
	sd->bottomtexture = FUNC0(msd->bottomtexture);
	sd->midtexture = FUNC0(msd->midtexture);
	sd->sector = &sectors[FUNC1(msd->sector)];
    }
	
    FUNC4 (data);
}