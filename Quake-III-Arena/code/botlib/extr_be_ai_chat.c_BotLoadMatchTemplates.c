
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int subtype; unsigned long intvalue; int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
struct TYPE_9__ {unsigned long context; unsigned long type; unsigned long subtype; int first; struct TYPE_9__* next; } ;
typedef TYPE_2__ bot_matchtemplate_t ;
struct TYPE_10__ {int (* Print ) (int ,char*,char*) ;} ;


 int BOTFILESBASEFOLDER ;
 int BotFreeMatchTemplates (TYPE_2__*) ;
 int BotLoadMatchPieces (int *,char*) ;
 int FreeSource (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int * LoadSourceFile (char*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int PC_ExpectTokenType (int *,scalar_t__,int,TYPE_1__*) ;
 scalar_t__ PC_ReadToken (int *,TYPE_1__*) ;
 int PC_SetBaseFolder (int ) ;
 int PC_UnreadLastToken (int *) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int SourceError (int *,char*,int ) ;
 int TT_INTEGER ;
 scalar_t__ TT_NUMBER ;
 TYPE_3__ botimport ;
 int strcmp (int ,char*) ;
 int stub1 (int ,char*,char*) ;
 int stub2 (int ,char*,char*) ;

bot_matchtemplate_t *BotLoadMatchTemplates(char *matchfile)
{
 source_t *source;
 token_t token;
 bot_matchtemplate_t *matchtemplate, *matches, *lastmatch;
 unsigned long int context;

 PC_SetBaseFolder(BOTFILESBASEFOLDER);
 source = LoadSourceFile(matchfile);
 if (!source)
 {
  botimport.Print(PRT_ERROR, "counldn't load %s\n", matchfile);
  return ((void*)0);
 }

 matches = ((void*)0);
 lastmatch = ((void*)0);

 while(PC_ReadToken(source, &token))
 {
  if (token.type != TT_NUMBER || !(token.subtype & TT_INTEGER))
  {
   SourceError(source, "expected integer, found %s\n", token.string);
   BotFreeMatchTemplates(matches);
   FreeSource(source);
   return ((void*)0);
  }

  context = token.intvalue;

  if (!PC_ExpectTokenString(source, "{"))
  {
   BotFreeMatchTemplates(matches);
   FreeSource(source);
   return ((void*)0);
  }

  while(PC_ReadToken(source, &token))
  {
   if (!strcmp(token.string, "}")) break;

   PC_UnreadLastToken(source);

   matchtemplate = (bot_matchtemplate_t *) GetClearedHunkMemory(sizeof(bot_matchtemplate_t));
   matchtemplate->context = context;
   matchtemplate->next = ((void*)0);

   if (lastmatch) lastmatch->next = matchtemplate;
   else matches = matchtemplate;
   lastmatch = matchtemplate;

   matchtemplate->first = BotLoadMatchPieces(source, "=");
   if (!matchtemplate->first)
   {
    BotFreeMatchTemplates(matches);
    return ((void*)0);
   }

   if (!PC_ExpectTokenString(source, "(") ||
    !PC_ExpectTokenType(source, TT_NUMBER, TT_INTEGER, &token))
   {
    BotFreeMatchTemplates(matches);
    FreeSource(source);
    return ((void*)0);
   }
   matchtemplate->type = token.intvalue;

   if (!PC_ExpectTokenString(source, ",") ||
    !PC_ExpectTokenType(source, TT_NUMBER, TT_INTEGER, &token))
   {
    BotFreeMatchTemplates(matches);
    FreeSource(source);
    return ((void*)0);
   }
   matchtemplate->subtype = token.intvalue;

   if (!PC_ExpectTokenString(source, ")") ||
    !PC_ExpectTokenString(source, ";"))
   {
    BotFreeMatchTemplates(matches);
    FreeSource(source);
    return ((void*)0);
   }
  }
 }

 FreeSource(source);
 botimport.Print(PRT_MESSAGE, "loaded %s\n", matchfile);



 return matches;
}
