#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ planenum; struct TYPE_7__* volume; struct TYPE_7__* brushlist; struct TYPE_7__* next; struct TYPE_7__** children; } ;
typedef  TYPE_1__ node_t ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 
 int /*<<< orphan*/  c_nodes ; 
 int /*<<< orphan*/  freedtreemem ; 
 int numthreads ; 

void FUNC3 (node_t *node)
{
//	face_t *f, *nextf;
	bspbrush_t *brush, *nextbrush;

	//free children
	if (node->planenum != PLANENUM_LEAF)
	{
		FUNC3 (node->children[0]);
		FUNC3 (node->children[1]);
	} //end if
	//free bspbrushes
//	FreeBrushList (node->brushlist);
	for (brush = node->brushlist; brush; brush = nextbrush)
	{
		nextbrush = brush->next;
#ifdef ME
		freedtreemem += MemorySize(brush);
#endif //ME
		FUNC0(brush);
	} //end for
	node->brushlist = NULL;

	/*
	NOTE: only used when creating Q2 bsp
	// free faces
	for (f = node->faces; f; f = nextf)
	{
		nextf = f->next;
#ifdef ME
		if (f->w) freedtreemem += MemorySize(f->w);
		freedtreemem += sizeof(face_t);
#endif //ME
		FreeFace(f);
	} //end for
	*/

	// free the node
	if (node->volume)
	{
#ifdef ME
		freedtreemem += MemorySize(node->volume);
#endif //ME
		FUNC0 (node->volume);
	} //end if

	if (numthreads == 1) c_nodes--;
#ifdef ME
	freedtreemem += MemorySize(node);
#endif //ME
	FUNC1(node);
}