
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int string; } ;
typedef TYPE_1__ token_t ;
typedef int script_t ;
struct TYPE_9__ {char* key; char* value; struct TYPE_9__* next; } ;
typedef TYPE_2__ bsp_epair_t ;
struct TYPE_10__ {TYPE_2__* epairs; } ;
typedef TYPE_3__ bsp_entity_t ;
struct TYPE_12__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_11__ {int numentities; TYPE_3__* entities; int entdatasize; int dentdata; } ;


 int AAS_FreeBSPEntities () ;
 int FreeScript (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 scalar_t__ GetHunkMemory (scalar_t__) ;
 int * LoadScriptMemory (int ,int ,char*) ;
 int MAX_BSPENTITIES ;
 int PRT_MESSAGE ;
 int PS_ExpectTokenType (int *,scalar_t__,int ,TYPE_1__*) ;
 scalar_t__ PS_ReadToken (int *,TYPE_1__*) ;
 int SCFL_NOSTRINGESCAPECHARS ;
 int SCFL_NOSTRINGWHITESPACES ;
 int ScriptError (int *,char*,...) ;
 int SetScriptFlags (int *,int) ;
 int StripDoubleQuotes (int ) ;
 scalar_t__ TT_STRING ;
 TYPE_5__ botimport ;
 TYPE_4__ bspworld ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 int stub1 (int ,char*) ;

void AAS_ParseBSPEntities(void)
{
 script_t *script;
 token_t token;
 bsp_entity_t *ent;
 bsp_epair_t *epair;

 script = LoadScriptMemory(bspworld.dentdata, bspworld.entdatasize, "entdata");
 SetScriptFlags(script, SCFL_NOSTRINGWHITESPACES|SCFL_NOSTRINGESCAPECHARS);

 bspworld.numentities = 1;

 while(PS_ReadToken(script, &token))
 {
  if (strcmp(token.string, "{"))
  {
   ScriptError(script, "invalid %s\n", token.string);
   AAS_FreeBSPEntities();
   FreeScript(script);
   return;
  }
  if (bspworld.numentities >= MAX_BSPENTITIES)
  {
   botimport.Print(PRT_MESSAGE, "too many entities in BSP file\n");
   break;
  }
  ent = &bspworld.entities[bspworld.numentities];
  bspworld.numentities++;
  ent->epairs = ((void*)0);
  while(PS_ReadToken(script, &token))
  {
   if (!strcmp(token.string, "}")) break;
   epair = (bsp_epair_t *) GetClearedHunkMemory(sizeof(bsp_epair_t));
   epair->next = ent->epairs;
   ent->epairs = epair;
   if (token.type != TT_STRING)
   {
    ScriptError(script, "invalid %s\n", token.string);
    AAS_FreeBSPEntities();
    FreeScript(script);
    return;
   }
   StripDoubleQuotes(token.string);
   epair->key = (char *) GetHunkMemory(strlen(token.string) + 1);
   strcpy(epair->key, token.string);
   if (!PS_ExpectTokenType(script, TT_STRING, 0, &token))
   {
    AAS_FreeBSPEntities();
    FreeScript(script);
    return;
   }
   StripDoubleQuotes(token.string);
   epair->value = (char *) GetHunkMemory(strlen(token.string) + 1);
   strcpy(epair->value, token.string);
  }
  if (strcmp(token.string, "}"))
  {
   ScriptError(script, "missing }\n");
   AAS_FreeBSPEntities();
   FreeScript(script);
   return;
  }
 }
 FreeScript(script);
}
