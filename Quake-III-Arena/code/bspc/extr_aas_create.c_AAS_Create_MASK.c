#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_10__ {scalar_t__ numbrushes; scalar_t__ firstbrush; } ;
typedef  TYPE_2__ entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 double FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,double) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 TYPE_1__* FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ cancelconversion ; 
 TYPE_2__* entities ; 
 size_t entity_num ; 
 scalar_t__ freetree ; 
 int /*<<< orphan*/  source ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 

void FUNC28(char *aasfile)
{
	entity_t	*e;
	tree_t *tree;
	double start_time;

	//for a possible leak file
	FUNC27(source, aasfile);
	FUNC23(source);
	//the time started
	start_time = FUNC18();
	//set the default number of threads (depends on number of processors)
	FUNC24();
	//set the global entity number to the world model
	entity_num = 0;
	//the world entity
	e = &entities[entity_num];
	//process the whole world
	tree = FUNC22(e->firstbrush, e->firstbrush + e->numbrushes);
	//if the conversion is cancelled
	if (cancelconversion)
	{
		FUNC25(tree);
		return;
	} //end if
	//display BSP tree creation time
	FUNC20("BSP tree created in %5.0f seconds\n", FUNC18() - start_time);
	//prune the bsp tree
	FUNC26(tree->headnode);
	//if the conversion is cancelled
	if (cancelconversion)
	{
		FUNC25(tree);
		return;
	} //end if
	//create the tree portals
	FUNC21(tree);
	//if the conversion is cancelled
	if (cancelconversion)
	{
		FUNC25(tree);
		return;
	} //end if
	//Marks all nodes that can be reached by entites
	if (FUNC17(tree))
	{
		//fill out nodes that can't be reached
		FUNC16(tree->headnode);
	} //end if
	else
	{
		FUNC19(tree);
		FUNC15("**** leaked ****\n");
		return;
	} //end else
	//create AAS from the BSP tree
	//==========================================
	//initialize tmp aas
	FUNC5();
	//create the convex areas from the leaves
	FUNC1(tree->headnode);
	//free the BSP tree because it isn't used anymore
	if (freetree) FUNC25(tree);
	//try to merge area faces
	FUNC8();
	//do gravitational subdivision
	FUNC4();
	//merge faces if possible
	FUNC8();
	FUNC12();
	//merge areas if possible
	FUNC10();
	//NOTE: prune nodes directly after area merging
	FUNC11();
	//flip shared faces so they are all facing to the same area
	FUNC2();
	FUNC12();
	//merge faces if possible
	FUNC8();
	//merge area faces in the same plane
	FUNC9();
	//do ladder subdivision
	FUNC6();
	//FIXME: melting is buggy
	FUNC7();
	//remove tiny faces
	FUNC13();
	//create area settings
	FUNC0();
	//check if the winding plane is equal to the face plane
	//AAS_CheckAreaWindingPlanes();
	//
	//AAS_CheckSharedFaces();
	//==========================================
	//if the conversion is cancelled
	if (cancelconversion)
	{
		FUNC25(tree);
		FUNC3();
		return;
	} //end if
	//store the created AAS stuff in the AAS file format and write the file
	FUNC14(aasfile);
	//free the temporary AAS memory
	FUNC3();
	//display creation time
	FUNC20("\nAAS created in %5.0f seconds\n", FUNC18() - start_time);
}