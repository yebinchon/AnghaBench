
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {char* filename; size_t numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_17__ {char* string; } ;
typedef TYPE_3__ token_t ;
typedef int source_t ;
struct TYPE_18__ {int * child; int * next; int value; scalar_t__ index; } ;
typedef TYPE_4__ fuzzyseperator_t ;
struct TYPE_19__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_15__ {char* name; TYPE_4__* firstseperator; } ;


 int BOTFILESBASEFOLDER ;
 int FreeMemory (TYPE_4__*) ;
 int FreeSource (int *) ;
 int FreeWeightConfig (TYPE_2__*) ;
 scalar_t__ GetClearedMemory (int) ;
 int LibVarGetValue (char*) ;
 int * LoadSourceFile (char*) ;
 int MAX_INVENTORYVALUE ;
 size_t MAX_WEIGHTS ;
 int MAX_WEIGHT_FILES ;
 int PC_ExpectAnyToken (int *,TYPE_3__*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int PC_ExpectTokenType (int *,int ,int ,TYPE_3__*) ;
 scalar_t__ PC_ReadToken (int *,TYPE_3__*) ;
 int PC_SetBaseFolder (int ) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int Q_strncpyz (char*,char*,int) ;
 TYPE_4__* ReadFuzzySeperators_r (int *) ;
 int ReadFuzzyWeight (int *,TYPE_4__*) ;
 int SourceError (int *,char*,char*) ;
 int SourceWarning (int *,char*) ;
 int StripDoubleQuotes (char*) ;
 int Sys_MilliSeconds () ;
 int TT_STRING ;
 scalar_t__ bot_developer ;
 TYPE_6__ botimport ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int ,char*,char*) ;
 int stub2 (int ,char*,char*) ;
 int stub3 (int ,char*,char*) ;
 int stub4 (int ,char*,int) ;
 TYPE_2__** weightFileList ;

weightconfig_t *ReadWeightConfig(char *filename)
{
 int newindent, avail = 0, n;
 token_t token;
 source_t *source;
 fuzzyseperator_t *fs;
 weightconfig_t *config = ((void*)0);






 if (!LibVarGetValue("bot_reloadcharacters"))
 {
  avail = -1;
  for( n = 0; n < MAX_WEIGHT_FILES; n++ )
  {
   config = weightFileList[n];
   if( !config )
   {
    if( avail == -1 )
    {
     avail = n;
    }
    continue;
   }
   if( strcmp( filename, config->filename ) == 0 )
   {

    return config;
   }
  }

  if( avail == -1 )
  {
   botimport.Print( PRT_ERROR, "weightFileList was full trying to load %s\n", filename );
   return ((void*)0);
  }
 }

 PC_SetBaseFolder(BOTFILESBASEFOLDER);
 source = LoadSourceFile(filename);
 if (!source)
 {
  botimport.Print(PRT_ERROR, "counldn't load %s\n", filename);
  return ((void*)0);
 }

 config = (weightconfig_t *) GetClearedMemory(sizeof(weightconfig_t));
 config->numweights = 0;
 Q_strncpyz( config->filename, filename, sizeof(config->filename) );

 while(PC_ReadToken(source, &token))
 {
  if (!strcmp(token.string, "weight"))
  {
   if (config->numweights >= MAX_WEIGHTS)
   {
    SourceWarning(source, "too many fuzzy weights\n");
    break;
   }
   if (!PC_ExpectTokenType(source, TT_STRING, 0, &token))
   {
    FreeWeightConfig(config);
    FreeSource(source);
    return ((void*)0);
   }
   StripDoubleQuotes(token.string);
   config->weights[config->numweights].name = (char *) GetClearedMemory(strlen(token.string) + 1);
   strcpy(config->weights[config->numweights].name, token.string);
   if (!PC_ExpectAnyToken(source, &token))
   {
    FreeWeightConfig(config);
    FreeSource(source);
    return ((void*)0);
   }
   newindent = qfalse;
   if (!strcmp(token.string, "{"))
   {
    newindent = qtrue;
    if (!PC_ExpectAnyToken(source, &token))
    {
     FreeWeightConfig(config);
     FreeSource(source);
     return ((void*)0);
    }
   }
   if (!strcmp(token.string, "switch"))
   {
    fs = ReadFuzzySeperators_r(source);
    if (!fs)
    {
     FreeWeightConfig(config);
     FreeSource(source);
     return ((void*)0);
    }
    config->weights[config->numweights].firstseperator = fs;
   }
   else if (!strcmp(token.string, "return"))
   {
    fs = (fuzzyseperator_t *) GetClearedMemory(sizeof(fuzzyseperator_t));
    fs->index = 0;
    fs->value = MAX_INVENTORYVALUE;
    fs->next = ((void*)0);
    fs->child = ((void*)0);
    if (!ReadFuzzyWeight(source, fs))
    {
     FreeMemory(fs);
     FreeWeightConfig(config);
     FreeSource(source);
     return ((void*)0);
    }
    config->weights[config->numweights].firstseperator = fs;
   }
   else
   {
    SourceError(source, "invalid name %s\n", token.string);
    FreeWeightConfig(config);
    FreeSource(source);
    return ((void*)0);
   }
   if (newindent)
   {
    if (!PC_ExpectTokenString(source, "}"))
    {
     FreeWeightConfig(config);
     FreeSource(source);
     return ((void*)0);
    }
   }
   config->numweights++;
  }
  else
  {
   SourceError(source, "invalid name %s\n", token.string);
   FreeWeightConfig(config);
   FreeSource(source);
   return ((void*)0);
  }
 }

 FreeSource(source);

 botimport.Print(PRT_MESSAGE, "loaded %s\n", filename);







 if (!LibVarGetValue("bot_reloadcharacters"))
 {
  weightFileList[avail] = config;
 }

 return config;
}
