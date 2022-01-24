#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int contents; } ;
typedef  TYPE_1__ hl_dleaf_t ;
struct TYPE_13__ {struct TYPE_13__* next; int /*<<< orphan*/  side; } ;
typedef  TYPE_2__ bspbrush_t ;
struct TYPE_15__ {int planenum; int* children; } ;
struct TYPE_14__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_LAVA ; 
 int /*<<< orphan*/  CONTENTS_SLIME ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int /*<<< orphan*/  CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
#define  HL_CONTENTS_CLIP 142 
#define  HL_CONTENTS_CURRENT_0 141 
#define  HL_CONTENTS_CURRENT_180 140 
#define  HL_CONTENTS_CURRENT_270 139 
#define  HL_CONTENTS_CURRENT_90 138 
#define  HL_CONTENTS_CURRENT_DOWN 137 
#define  HL_CONTENTS_CURRENT_UP 136 
#define  HL_CONTENTS_EMPTY 135 
#define  HL_CONTENTS_LAVA 134 
#define  HL_CONTENTS_ORIGIN 133 
#define  HL_CONTENTS_SKY 132 
#define  HL_CONTENTS_SLIME 131 
#define  HL_CONTENTS_SOLID 130 
#define  HL_CONTENTS_TRANSLUCENT 129 
#define  HL_CONTENTS_WATER 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* hl_dleafs ; 
 TYPE_4__* hl_dnodes ; 
 TYPE_3__* hl_dplanes ; 
 int /*<<< orphan*/  hl_numbrushes ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

bspbrush_t *FUNC6(bspbrush_t *brush, int nodenum)
{
	int planenum;
	bspbrush_t *front, *back;
	hl_dleaf_t *leaf;

	//if it is a leaf
	if (nodenum < 0)
	{
		leaf = &hl_dleafs[(-nodenum) - 1];
		if (leaf->contents != HL_CONTENTS_EMPTY)
		{
#ifdef HL_PRINT
			qprintf("\r%5i", ++hl_numbrushes);
#endif //HL_PRINT
		} //end if
		switch(leaf->contents)
		{
			case HL_CONTENTS_EMPTY:
			{
				FUNC2(brush);
				return NULL;
			} //end case
			case HL_CONTENTS_SOLID:
#ifdef HLCONTENTS
			case HL_CONTENTS_CLIP:
#endif //HLCONTENTS
			case HL_CONTENTS_SKY:
#ifdef HLCONTENTS
			case HL_CONTENTS_TRANSLUCENT:
#endif //HLCONTENTS
			{
				brush->side = CONTENTS_SOLID;
				return brush;
			} //end case
			case HL_CONTENTS_WATER:
			{
				brush->side = CONTENTS_WATER;
				return brush;
			} //end case
			case HL_CONTENTS_SLIME:
			{
				brush->side = CONTENTS_SLIME;
				return brush;
			} //end case
			case HL_CONTENTS_LAVA:
			{
				brush->side = CONTENTS_LAVA;
				return brush;
			} //end case
#ifdef HLCONTENTS
			//these contents should not be found in the BSP
			case HL_CONTENTS_ORIGIN:
			case HL_CONTENTS_CURRENT_0:
			case HL_CONTENTS_CURRENT_90:
			case HL_CONTENTS_CURRENT_180:
			case HL_CONTENTS_CURRENT_270:
			case HL_CONTENTS_CURRENT_UP:
			case HL_CONTENTS_CURRENT_DOWN:
			{
				Error("HL_CreateBrushes_r: found contents %d in Half-Life BSP", leaf->contents);
				return NULL;
			} //end case
#endif //HLCONTENTS
			default:
			{
				FUNC0("HL_CreateBrushes_r: unknown contents %d in Half-Life BSP", leaf->contents);
				return NULL;
			} //end default
		} //end switch
		return NULL;
	} //end if
	//if the rest of the tree is solid
	/*if (HL_SolidTree_r(nodenum))
	{
		brush->side = CONTENTS_SOLID;
		return brush;
	} //end if*/
	//
	planenum = hl_dnodes[nodenum].planenum;
	planenum = FUNC1(hl_dplanes[planenum].normal, hl_dplanes[planenum].dist);
	//split the brush with the node plane
	FUNC3(brush, planenum, nodenum, &front, &back);
	//free the original brush
	FUNC2(brush);
	//every node must split the brush in two
	if (!front || !back)
	{
		FUNC4("HL_CreateBrushes_r: WARNING node not splitting brush\n");
		//return NULL;
	} //end if
	//create brushes recursively
	if (front) front = FUNC6(front, hl_dnodes[nodenum].children[0]);
	if (back) back = FUNC6(back, hl_dnodes[nodenum].children[1]);
	//link the brushes if possible and return them
	if (front)
	{
		for (brush = front; brush->next; brush = brush->next);
		brush->next = back;
		return front;
	} //end if
	else
	{
		return back;
	} //end else
}