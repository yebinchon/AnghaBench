#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec_t ;
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  areas ;
struct TYPE_15__ {int* endpos; scalar_t__ startsolid; } ;
typedef  TYPE_2__ aas_trace_t ;
struct TYPE_16__ {int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ aas_plane_t ;
struct TYPE_17__ {int areanum; int edgenum; int* start; int* end; struct TYPE_17__* next; scalar_t__ traveltime; int /*<<< orphan*/  traveltype; scalar_t__ facenum; } ;
typedef  TYPE_4__ aas_lreachability_t ;
struct TYPE_18__ {int faceflags; int numedges; int firstedge; int frontarea; int backarea; size_t planenum; } ;
typedef  TYPE_5__ aas_face_t ;
struct TYPE_19__ {size_t* v; } ;
typedef  TYPE_6__ aas_edge_t ;
struct TYPE_20__ {int numfaces; int firstface; } ;
typedef  TYPE_7__ aas_area_t ;
struct TYPE_21__ {int* faceindex; int* edgeindex; TYPE_1__* areasettings; TYPE_3__* planes; int /*<<< orphan*/ ** vertexes; TYPE_6__* edges; TYPE_5__* faces; TYPE_7__* areas; } ;
struct TYPE_14__ {int areaflags; int contents; } ;
struct TYPE_13__ {int rs_maxfallheight; int phys_gravity; scalar_t__ phys_falldelta5; scalar_t__ phys_falldelta10; scalar_t__ rs_falldamage10; scalar_t__ rs_falldamage5; scalar_t__ rs_startwalkoffledge; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int FUNC8 (int*,int*,int*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ FUNC9 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int AREACONTENTS_LAVA ; 
 int AREACONTENTS_SLIME ; 
 int AREA_GROUNDED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 int FACE_GROUND ; 
 int FACE_SOLID ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  TRAVEL_WALKOFFLEDGE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (int*,double,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 TYPE_10__ aassettings ; 
 TYPE_9__ aasworld ; 
 size_t FUNC17 (int) ; 
 TYPE_4__** areareachability ; 
 int FUNC18 (int) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  reach_walkoffledge ; 

void FUNC19(int areanum)
{
	int i, j, k, l, m, n, p, areas[10], numareas;
	int face1num, face2num, face3num, edge1num, edge2num, edge3num;
	int otherareanum, gap, reachareanum, side;
	aas_area_t *area, *area2;
	aas_face_t *face1, *face2, *face3;
	aas_edge_t *edge;
	aas_plane_t *plane;
	vec_t *v1, *v2;
	vec3_t sharededgevec, mid, dir, testend;
	aas_lreachability_t *lreach;
	aas_trace_t trace;

	if (!FUNC2(areanum) || FUNC4(areanum)) return;
	//
	area = &aasworld.areas[areanum];
	//
	for (i = 0; i < area->numfaces; i++)
	{
		face1num = aasworld.faceindex[area->firstface + i];
		face1 = &aasworld.faces[FUNC17(face1num)];
		//face 1 must be a ground face
		if (!(face1->faceflags & FACE_GROUND)) continue;
		//go through all the edges of this ground face
		for (k = 0; k < face1->numedges; k++)
		{
			edge1num = aasworld.edgeindex[face1->firstedge + k];
			//find another not ground face using this same edge
			for (j = 0; j < area->numfaces; j++)
			{
				face2num = aasworld.faceindex[area->firstface + j];
				face2 = &aasworld.faces[FUNC17(face2num)];
				//face 2 may not be a ground face
				if (face2->faceflags & FACE_GROUND) continue;
				//compare all the edges
				for (l = 0; l < face2->numedges; l++)
				{
					edge2num = aasworld.edgeindex[face2->firstedge + l];
					if (FUNC17(edge1num) == FUNC17(edge2num))
					{
						//get the area at the other side of the face
						if (face2->frontarea == areanum) otherareanum = face2->backarea;
						else otherareanum = face2->frontarea;
						//
						area2 = &aasworld.areas[otherareanum];
						//if the other area is grounded!
						if (aasworld.areasettings[otherareanum].areaflags & AREA_GROUNDED)
						{
							//check for a possible gap
							gap = qfalse;
							for (n = 0; n < area2->numfaces; n++)
							{
								face3num = aasworld.faceindex[area2->firstface + n];
								//may not be the shared face of the two areas
								if (FUNC17(face3num) == FUNC17(face2num)) continue;
								//
								face3 = &aasworld.faces[FUNC17(face3num)];
								//find an edge shared by all three faces
								for (m = 0; m < face3->numedges; m++)
								{
									edge3num = aasworld.edgeindex[face3->firstedge + m];
									//but the edge should be shared by all three faces
									if (FUNC17(edge3num) == FUNC17(edge1num))
									{
										if (!(face3->faceflags & FACE_SOLID))
										{
											gap = qtrue;
											break;
										} //end if
										//
										if (face3->faceflags & FACE_GROUND)
										{
											gap = qfalse;
											break;
										} //end if
										//FIXME: there are more situations to be handled
										gap = qtrue;
										break;
									} //end if
								} //end for
								if (m < face3->numedges) break;
							} //end for
							if (!gap) break;
						} //end if
						//check for a walk off ledge reachability
						edge = &aasworld.edges[FUNC17(edge1num)];
						side = edge1num < 0;
						//
						v1 = aasworld.vertexes[edge->v[side]];
						v2 = aasworld.vertexes[edge->v[!side]];
						//
						plane = &aasworld.planes[face1->planenum];
						//get the points really into the areas
						FUNC16(v2, v1, sharededgevec);
						FUNC10(plane->normal, sharededgevec, dir);
						FUNC14(dir);
						//
						FUNC11(v1, v2, mid);
						FUNC15(mid, 0.5, mid);
						FUNC13(mid, 8, dir, mid);
						//
						FUNC12(mid, testend);
						testend[2] -= 1000;
						trace = FUNC9(mid, testend, PRESENCE_CROUCH, -1);
						//
						if (trace.startsolid)
						{
							//Log_Write("area %d: trace.startsolid\r\n", areanum);
							break;
						} //end if
						reachareanum = FUNC6(trace.endpos);
						if (reachareanum == areanum)
						{
							//Log_Write("area %d: same area\r\n", areanum);
							break;
						} //end if
						if (FUNC7(areanum, reachareanum))
						{
							//Log_Write("area %d: reachability already exists\r\n", areanum);
							break;
						} //end if
						if (!FUNC2(reachareanum) && !FUNC4(reachareanum))
						{
							//Log_Write("area %d, reach area %d: not grounded and not swim\r\n", areanum, reachareanum);
							break;
						} //end if
						//
						if (aasworld.areasettings[reachareanum].contents & (AREACONTENTS_SLIME
																						| AREACONTENTS_LAVA))
						{
							//Log_Write("area %d, reach area %d: lava or slime\r\n", areanum, reachareanum);
							break;
						} //end if
						//if not going through a cluster portal
						numareas = FUNC8(mid, testend, areas, NULL, sizeof(areas) / sizeof(int));
						for (p = 0; p < numareas; p++)
							if (FUNC1(areas[p]))
								break;
						if (p < numareas)
							break;
						// if a maximum fall height is set and the bot would fall down further
						if (aassettings.rs_maxfallheight && FUNC18(mid[2] - trace.endpos[2]) > aassettings.rs_maxfallheight)
							break;
						//
						lreach = FUNC0();
						if (!lreach) break;
						lreach->areanum = reachareanum;
						lreach->facenum = 0;
						lreach->edgenum = edge1num;
						FUNC12(mid, lreach->start);
						FUNC12(trace.endpos, lreach->end);
						lreach->traveltype = TRAVEL_WALKOFFLEDGE;
						lreach->traveltime = aassettings.rs_startwalkoffledge + FUNC18(mid[2] - trace.endpos[2]) * 50 / aassettings.phys_gravity;
						if (!FUNC4(reachareanum) && !FUNC3(reachareanum))
						{
							if (FUNC5(mid[2] - trace.endpos[2]) > aassettings.phys_falldelta5)
							{
								lreach->traveltime += aassettings.rs_falldamage5;
							} //end if
							else if (FUNC5(mid[2] - trace.endpos[2]) > aassettings.phys_falldelta10)
							{
								lreach->traveltime += aassettings.rs_falldamage10;
							} //end if
						} //end if
						lreach->next = areareachability[areanum];
						areareachability[areanum] = lreach;
						//we've got another walk off ledge reachability
						reach_walkoffledge++;
					} //end if
				} //end for
			} //end for
		} //end for
	} //end for
}