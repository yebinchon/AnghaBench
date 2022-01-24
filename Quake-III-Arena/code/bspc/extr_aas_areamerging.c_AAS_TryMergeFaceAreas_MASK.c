#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int faceflags; TYPE_2__* backarea; TYPE_2__* frontarea; struct TYPE_15__** next; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_16__ {scalar_t__ presencetype; scalar_t__ contents; scalar_t__ modelnum; int invalid; struct TYPE_16__* mergedarea; TYPE_1__* tmpfaces; } ;
typedef  TYPE_2__ tmp_area_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FACE_GAP ; 
 int FACE_GROUND ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_1__*,int,int) ; 

int FUNC9(tmp_face_t *seperatingface)
{
	int side1, side2, area1faceflags, area2faceflags;
	tmp_area_t *tmparea1, *tmparea2, *newarea;
	tmp_face_t *face1, *face2, *nextface1, *nextface2;

	tmparea1 = seperatingface->frontarea;
	tmparea2 = seperatingface->backarea;

	//areas must have the same presence type
	if (tmparea1->presencetype != tmparea2->presencetype) return false;
	//areas must have the same area contents
	if (tmparea1->contents != tmparea2->contents) return false;
	//areas must have the same bsp model inside (or both none)
	if (tmparea1->modelnum != tmparea2->modelnum) return false;

	area1faceflags = 0;
	area2faceflags = 0;
	for (face1 = tmparea1->tmpfaces; face1; face1 = face1->next[side1])
	{
		side1 = (face1->frontarea != tmparea1);
		//debug: check if the area belongs to the area
		if (face1->frontarea != tmparea1 &&
				face1->backarea != tmparea1) FUNC7("face does not belong to area1");
		//just continue if the face is seperating the two areas
		//NOTE: a result of this is that ground and gap areas can
		//      be merged if the seperating face is the gap
		if ((face1->frontarea == tmparea1 &&
				face1->backarea == tmparea2) ||
				(face1->frontarea == tmparea2 &&
				face1->backarea == tmparea1)) continue;
		//get area1 face flags
		area1faceflags |= face1->faceflags;
		if (FUNC5(face1, side1)) area1faceflags |= FACE_GAP;
		//
		for (face2 = tmparea2->tmpfaces; face2; face2 = face2->next[side2])
		{
			side2 = (face2->frontarea != tmparea2);
			//debug: check if the area belongs to the area
			if (face2->frontarea != tmparea2 &&
					face2->backarea != tmparea2) FUNC7("face does not belong to area2");
			//just continue if the face is seperating the two areas
			//NOTE: a result of this is that ground and gap areas can
			//      be merged if the seperating face is the gap
			if ((face2->frontarea == tmparea1 &&
					face2->backarea == tmparea2) ||
					(face2->frontarea == tmparea2 &&
					face2->backarea == tmparea1)) continue;
			//get area2 face flags
			area2faceflags |= face2->faceflags;
			if (FUNC5(face2, side2)) area2faceflags |= FACE_GAP;
			//if the two faces would create a non-convex area
			if (FUNC8(face1, face2, side1, side2)) return false;
		} //end for
	} //end for
	//if one area has gap faces (that aren't seperating the two areas)
	//and the other has ground faces (that aren't seperating the two areas),
	//the areas can't be merged
	if (((area1faceflags & FACE_GROUND) && (area2faceflags & FACE_GAP)) ||
			((area2faceflags & FACE_GROUND) && (area1faceflags & FACE_GAP)))
	{
//		Log_Print("   can't merge: ground/gap\n");
		return false;
	} //end if

//	Log_Print("merged area %d & %d to %d with %d faces\n", tmparea1->areanum, tmparea2->areanum, newarea->areanum, numfaces);
//	return false;
	//
	//AAS_CheckArea(tmparea1);
	//AAS_CheckArea(tmparea2);
	//create the new area
	newarea = FUNC1();
	newarea->presencetype = tmparea1->presencetype;
	newarea->contents = tmparea1->contents;
	newarea->modelnum = tmparea1->modelnum;
	newarea->tmpfaces = NULL;

	//add all the faces (except the seperating ones) from the first area
	//to the new area
	for (face1 = tmparea1->tmpfaces; face1; face1 = nextface1)
	{
		side1 = (face1->frontarea != tmparea1);
		nextface1 = face1->next[side1];
		//don't add seperating faces
		if ((face1->frontarea == tmparea1 &&
				face1->backarea == tmparea2) ||
				(face1->frontarea == tmparea2 &&
				face1->backarea == tmparea1))
		{
			continue;
		} //end if
		//
		FUNC6(face1, tmparea1);
		FUNC0(face1, side1, newarea);
	} //end for
	//add all the faces (except the seperating ones) from the second area
	//to the new area
	for (face2 = tmparea2->tmpfaces; face2; face2 = nextface2)
	{
		side2 = (face2->frontarea != tmparea2);
		nextface2 = face2->next[side2];
		//don't add seperating faces
		if ((face2->frontarea == tmparea1 &&
				face2->backarea == tmparea2) ||
				(face2->frontarea == tmparea2 &&
				face2->backarea == tmparea1))
		{
			continue;
		} //end if
		//
		FUNC6(face2, tmparea2);
		FUNC0(face2, side2, newarea);
	} //end for
	//free all shared faces
	for (face1 = tmparea1->tmpfaces; face1; face1 = nextface1)
	{
		side1 = (face1->frontarea != tmparea1);
		nextface1 = face1->next[side1];
		//
		FUNC6(face1, face1->frontarea);
		FUNC6(face1, face1->backarea);
		FUNC4(face1);
	} //end for
	//
	tmparea1->mergedarea = newarea;
	tmparea1->invalid = true;
	tmparea2->mergedarea = newarea;
	tmparea2->invalid = true;
	//
	FUNC2(newarea);
	FUNC3(newarea);
//	Log_Print("merged area %d & %d to %d with %d faces\n", tmparea1->areanum, tmparea2->areanum, newarea->areanum);
	return true;
}