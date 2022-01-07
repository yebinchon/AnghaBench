
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_11__ {scalar_t__* origin; TYPE_1__* epairs; } ;


 int AdjustBrushesForOrigin (TYPE_2__*) ;
 scalar_t__ BPRIMIT_NEWBRUSHES ;
 scalar_t__ BPRIMIT_OLDBRUSHES ;
 int Error (char*,...) ;
 int GetToken (int ) ;
 int GetVectorForKey (TYPE_2__*,char*,scalar_t__*) ;
 size_t MAX_MAP_ENTITIES ;
 int MoveBrushesToWorld (TYPE_2__*) ;
 int ParseBrush () ;
 TYPE_1__* ParseEpair () ;
 int ParsePatch () ;
 int ParseTerrain () ;
 int SetTerrainTextures () ;
 int UnGetToken () ;
 char* ValueForKey (TYPE_2__*,char*) ;
 TYPE_2__* entities ;
 scalar_t__ entitySourceBrushes ;
 scalar_t__ g_bBrushPrimit ;
 TYPE_2__* mapent ;
 int memset (TYPE_2__*,int ,int) ;
 int numMapPatches ;
 size_t num_entities ;
 int qfalse ;
 int qtrue ;
 int scriptline ;
 scalar_t__ strcmp (char*,char*) ;
 char* token ;

qboolean ParseMapEntity (void) {
 epair_t *e;

 if (!GetToken (qtrue))
  return qfalse;

 if (strcmp (token, "{") )
 {
  Error ("ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...", token, scriptline, entities[num_entities].origin[0], entities[num_entities].origin[1], entities[num_entities].origin[2]);
 }

 if (num_entities == MAX_MAP_ENTITIES)
  Error ("num_entities == MAX_MAP_ENTITIES");

 entitySourceBrushes = 0;

 mapent = &entities[num_entities];
 num_entities++;
 memset (mapent, 0, sizeof(*mapent));

 do
 {
  if (!GetToken (qtrue))
   Error ("ParseEntity: EOF without closing brace");
  if (!strcmp (token, "}") )
   break;

  if (!strcmp (token, "{") ) {

   if (!GetToken (qtrue))
    break;
   if ( !strcmp( token, "patchDef2" ) ) {
    numMapPatches++;
    ParsePatch();
   } else if ( !strcmp( token, "terrainDef" ) ) {
    ParseTerrain();
   } else if ( !strcmp( token, "brushDef" ) ) {
    if (g_bBrushPrimit==BPRIMIT_OLDBRUSHES)
     Error("old brush format not allowed in new brush format map");
    g_bBrushPrimit=BPRIMIT_NEWBRUSHES;

    ParseBrush();
   }
   else
   {
    if (g_bBrushPrimit==BPRIMIT_NEWBRUSHES)
     Error("new brush format not allowed in old brush format map");
    g_bBrushPrimit=BPRIMIT_OLDBRUSHES;

    UnGetToken();
    ParseBrush();
   }
   entitySourceBrushes++;
  }
  else
  {

   e = ParseEpair ();
   e->next = mapent->epairs;
   mapent->epairs = e;
  }
 } while (1);

 GetVectorForKey (mapent, "origin", mapent->origin);




 if (mapent->origin[0] || mapent->origin[1] || mapent->origin[2]) {
  AdjustBrushesForOrigin( mapent );
 }




  if (!strcmp("group_info", ValueForKey (mapent, "classname")))
  {
    num_entities--;
    return qtrue;
  }



 if (!strcmp ("func_group", ValueForKey (mapent, "classname")))
 {
  if ( !strcmp ("1", ValueForKey (mapent, "terrain"))) {
   SetTerrainTextures();
  }
  MoveBrushesToWorld (mapent);
  num_entities--;
  return qtrue;
 }

 return qtrue;
}
