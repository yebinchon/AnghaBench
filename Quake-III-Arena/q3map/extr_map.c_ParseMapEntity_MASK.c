#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_1__ epair_t ;
struct TYPE_11__ {scalar_t__* origin; TYPE_1__* epairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ BPRIMIT_NEWBRUSHES ; 
 scalar_t__ BPRIMIT_OLDBRUSHES ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__*) ; 
 size_t MAX_MAP_ENTITIES ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (TYPE_2__*,char*) ; 
 TYPE_2__* entities ; 
 scalar_t__ entitySourceBrushes ; 
 scalar_t__ g_bBrushPrimit ; 
 TYPE_2__* mapent ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numMapPatches ; 
 size_t num_entities ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  scriptline ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* token ; 

qboolean	FUNC14 (void) {
	epair_t		*e;

	if (!FUNC2 (qtrue))
		return qfalse;

	if (FUNC13 (token, "{") )
	{
		FUNC1 ("ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...", token, scriptline, entities[num_entities].origin[0], entities[num_entities].origin[1], entities[num_entities].origin[2]);
	}
	
	if (num_entities == MAX_MAP_ENTITIES)
		FUNC1 ("num_entities == MAX_MAP_ENTITIES");

	entitySourceBrushes = 0;

	mapent = &entities[num_entities];
	num_entities++;
	FUNC12 (mapent, 0, sizeof(*mapent));

	do
	{
		if (!FUNC2 (qtrue))
			FUNC1 ("ParseEntity: EOF without closing brace");
		if (!FUNC13 (token, "}") )
			break;

		if (!FUNC13 (token, "{") ) {
			// parse a brush or patch
			if (!FUNC2 (qtrue))
				break;
			if ( !FUNC13( token, "patchDef2" ) ) {
				numMapPatches++;
				FUNC7();
			} else if ( !FUNC13( token, "terrainDef" ) ) {
				FUNC8();
			} else if ( !FUNC13( token, "brushDef" ) ) {
				if (g_bBrushPrimit==BPRIMIT_OLDBRUSHES)
					FUNC1("old brush format not allowed in new brush format map");
				g_bBrushPrimit=BPRIMIT_NEWBRUSHES;
				// parse brush primitive
				FUNC5();
			}
			else
			{
				if (g_bBrushPrimit==BPRIMIT_NEWBRUSHES)
					FUNC1("new brush format not allowed in old brush format map");
				g_bBrushPrimit=BPRIMIT_OLDBRUSHES;
				// parse old brush format
				FUNC10();
				FUNC5();
			}
			entitySourceBrushes++;
		}
		else
		{
			// parse a key / value pair
			e = FUNC6 ();
			e->next = mapent->epairs;
			mapent->epairs = e;
		}
	} while (1);

	FUNC3 (mapent, "origin", mapent->origin);

	//
	// if there was an origin brush, offset all of the planes and texinfo
	// for all the brushes in the entity
	if (mapent->origin[0] || mapent->origin[1] || mapent->origin[2]) {
		FUNC0( mapent );
	}

  // group_info entities are just for editor grouping
  // ignored
  // FIXME: leak!
  if (!FUNC13("group_info", FUNC11 (mapent, "classname")))
  {
    num_entities--;
    return qtrue;
  }

	// group entities are just for editor convenience
	// toss all brushes into the world entity
	if (!FUNC13 ("func_group", FUNC11 (mapent, "classname")))
	{
		if ( !FUNC13 ("1", FUNC11 (mapent, "terrain"))) {
			FUNC9();
		}
		FUNC4 (mapent);
		num_entities--;
		return qtrue;
	}

	return qtrue;
}