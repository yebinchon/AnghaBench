#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_21__ {int planenum; TYPE_2__* backarea; TYPE_2__* frontarea; struct TYPE_21__** next; int /*<<< orphan*/ * winding; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_22__ {int invalid; TYPE_1__* tmpfaces; int /*<<< orphan*/  modelnum; int /*<<< orphan*/  contents; int /*<<< orphan*/  presencetype; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_2__ tmp_area_t ;
struct TYPE_23__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ plane_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_3__* mapplanes ; 

void FUNC11(tmp_area_t *tmparea, int planenum, tmp_area_t **frontarea, tmp_area_t **backarea)
{
	int side;
	tmp_area_t *facefrontarea, *facebackarea, *faceotherarea;
	tmp_face_t *face, *frontface, *backface, *splitface, *nextface;
	winding_t *splitwinding;
	plane_t *splitplane;

/*
#ifdef AW_DEBUG
	int facesplits, groundsplits, epsilonface;
	Log_Print("\n----------------------\n");
	Log_Print("splitting area %d\n", areanum);
	Log_Print("with normal = \'%f %f %f\', dist = %f\n", normal[0], normal[1], normal[2], dist);
	AAS_TestSplitPlane(areanum, normal, dist,
										&facesplits, &groundsplits, &epsilonface);
	Log_Print("face splits = %d\nground splits = %d\n", facesplits, groundsplits);
	if (epsilonface) Log_Print("aaahh epsilon face\n");
#endif //AW_DEBUG*/
	//the original area

	FUNC4(tmparea);
	FUNC3(tmparea);
	//
	splitplane = &mapplanes[planenum];
/*	//create a split winding, first base winding for plane
	splitwinding = BaseWindingForPlane(splitplane->normal, splitplane->dist);
	//chop with all the faces of the area
	for (face = tmparea->tmpfaces; face && splitwinding; face = face->next[side])
	{
		//side of the face the original area was on
		side = face->frontarea != tmparea->areanum;
		plane = &mapplanes[face->planenum ^ side];
		ChopWindingInPlace(&splitwinding, plane->normal, plane->dist, 0); // PLANESIDE_EPSILON);
	} //end for*/
	splitwinding = FUNC8(tmparea, planenum);
	if (!splitwinding)
	{
/*
#ifdef DEBUG
		AAS_TestSplitPlane(areanum, normal, dist,
											&facesplits, &groundsplits, &epsilonface);
		Log_Print("\nface splits = %d\nground splits = %d\n", facesplits, groundsplits);
		if (epsilonface) Log_Print("aaahh epsilon face\n");
#endif //DEBUG*/
		FUNC9("AAS_SplitArea: no split winding when splitting area %d\n", tmparea->areanum);
	} //end if
	//create a split face
	splitface = FUNC2();
	//get the map plane
	splitface->planenum = planenum;
	//store the split winding
	splitface->winding = splitwinding;
	//the new front area
	(*frontarea) = FUNC1();
	(*frontarea)->presencetype = tmparea->presencetype;
	(*frontarea)->contents = tmparea->contents;
	(*frontarea)->modelnum = tmparea->modelnum;
	(*frontarea)->tmpfaces = NULL;
	//the new back area
	(*backarea) = FUNC1();
	(*backarea)->presencetype = tmparea->presencetype;
	(*backarea)->contents = tmparea->contents;
	(*backarea)->modelnum = tmparea->modelnum;
	(*backarea)->tmpfaces = NULL;
	//add the split face to the new areas
	FUNC0(splitface, 0, (*frontarea));
	FUNC0(splitface, 1, (*backarea));

	//split all the faces of the original area
	for (face = tmparea->tmpfaces; face; face = nextface)
	{
		//side of the face the original area was on
		side = face->frontarea != tmparea;
		//next face of the original area
		nextface = face->next[side];
		//front area of the face
		facefrontarea = face->frontarea;
		//back area of the face
		facebackarea = face->backarea;
		//remove the face from both the front and back areas
		if (facefrontarea) FUNC6(face, facefrontarea);
		if (facebackarea) FUNC6(face, facebackarea);
		//split the face
		FUNC7(face, splitplane->normal, splitplane->dist, &frontface, &backface);
		//free the original face
		FUNC5(face);
		//get the number of the area at the other side of the face
		if (side) faceotherarea = facefrontarea;
		else faceotherarea = facebackarea;
		//if there is an area at the other side of the original face
		if (faceotherarea)
		{
			if (frontface) FUNC0(frontface, !side, faceotherarea);
			if (backface) FUNC0(backface, !side, faceotherarea);
		} //end if
		//add the front and back part left after splitting the original face to the new areas
		if (frontface) FUNC0(frontface, side, (*frontarea));
		if (backface) FUNC0(backface, side, (*backarea));
	} //end for

	if (!(*frontarea)->tmpfaces) FUNC10("AAS_SplitArea: front area without faces\n");
	if (!(*backarea)->tmpfaces) FUNC10("AAS_SplitArea: back area without faces\n");

	tmparea->invalid = true;
/*
#ifdef AW_DEBUG
	for (i = 0, face = frontarea->tmpfaces; face; face = face->next[side])
	{
		side = face->frontarea != frontarea->areanum;
		i++;
	} //end for
	Log_Print("created front area %d with %d faces\n", frontarea->areanum, i);

	for (i = 0, face = backarea->tmpfaces; face; face = face->next[side])
	{
		side = face->frontarea != backarea->areanum;
		i++;
	} //end for
	Log_Print("created back area %d with %d faces\n", backarea->areanum, i);
#endif //AW_DEBUG*/

	FUNC4((*frontarea));
	FUNC4((*backarea));
	//
	FUNC3((*frontarea));
	FUNC3((*backarea));
}