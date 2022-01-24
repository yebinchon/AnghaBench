#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_6__ {int modelnum; scalar_t__ areaportalnum; int /*<<< orphan*/  origin; scalar_t__ numbrushes; void* firstbrush; } ;
typedef  TYPE_1__ entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ c_areaportals ; 
 TYPE_1__* entities ; 
 void* nummapbrushes ; 
 int nummapbrushsides ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

qboolean FUNC7(int entnum)
{
	entity_t	*mapent;
	char *model;
	int startbrush, startsides;

	startbrush = nummapbrushes;
	startsides = nummapbrushsides;

	mapent = &entities[entnum];//num_entities];
	mapent->firstbrush = nummapbrushes;
	mapent->numbrushes = 0;
	mapent->modelnum = -1;	//-1 = no model

	model = FUNC3(mapent, "model");
	if (model && FUNC6(model))
	{
		if (*model != '*')
		{
			FUNC0("Q2_ParseBSPEntity: model number without leading *");
		} //end if
		//get the model number of this entity (skip the leading *)
		mapent->modelnum = FUNC4(&model[1]);
	} //end if

	FUNC1(mapent, "origin", mapent->origin);

	//if this is the world entity it has model number zero
	//the world entity has no model key
	if (!FUNC5("worldspawn", FUNC3(mapent, "classname")))
	{
		mapent->modelnum = 0;
	} //end if
	//if the map entity has a BSP model (a modelnum of -1 is used for
	//entities that aren't using a BSP model)
	if (mapent->modelnum >= 0)
	{
		//parse the bsp brushes
		FUNC2(mapent);
	} //end if
	//
	//the origin of the entity is already taken into account
	//
	//func_group entities can't be in the bsp file
	//
	//check out the func_areaportal entities
	if (!FUNC5 ("func_areaportal", FUNC3 (mapent, "classname")))
	{
		c_areaportals++;
		mapent->areaportalnum = c_areaportals;
		return true;
	} //end if
	return true;
}