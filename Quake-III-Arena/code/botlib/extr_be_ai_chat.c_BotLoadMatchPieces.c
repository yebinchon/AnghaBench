
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int subtype; scalar_t__ intvalue; scalar_t__ string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
struct TYPE_9__ {char* string; struct TYPE_9__* next; } ;
typedef TYPE_2__ bot_matchstring_t ;
struct TYPE_10__ {scalar_t__ variable; TYPE_2__* firststring; struct TYPE_10__* next; int type; } ;
typedef TYPE_3__ bot_matchpiece_t ;


 int BotFreeMatchPieces (TYPE_3__*) ;
 int FreeSource (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 scalar_t__ MAX_MATCHVARIABLES ;
 int MT_STRING ;
 int MT_VARIABLE ;
 scalar_t__ PC_CheckTokenString (int *,char*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int PC_ExpectTokenType (int *,scalar_t__,int ,TYPE_1__*) ;
 scalar_t__ PC_ReadToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,...) ;
 int StripDoubleQuotes (scalar_t__) ;
 int TT_INTEGER ;
 scalar_t__ TT_NUMBER ;
 scalar_t__ TT_STRING ;
 int qfalse ;
 int qtrue ;
 int strcpy (char*,scalar_t__) ;
 int strlen (scalar_t__) ;

bot_matchpiece_t *BotLoadMatchPieces(source_t *source, char *endtoken)
{
 int lastwasvariable, emptystring;
 token_t token;
 bot_matchpiece_t *matchpiece, *firstpiece, *lastpiece;
 bot_matchstring_t *matchstring, *lastmatchstring;

 firstpiece = ((void*)0);
 lastpiece = ((void*)0);

 lastwasvariable = qfalse;

 while(PC_ReadToken(source, &token))
 {
  if (token.type == TT_NUMBER && (token.subtype & TT_INTEGER))
  {
   if (token.intvalue < 0 || token.intvalue >= MAX_MATCHVARIABLES)
   {
    SourceError(source, "can't have more than %d match variables\n", MAX_MATCHVARIABLES);
    FreeSource(source);
    BotFreeMatchPieces(firstpiece);
    return ((void*)0);
   }
   if (lastwasvariable)
   {
    SourceError(source, "not allowed to have adjacent variables\n");
    FreeSource(source);
    BotFreeMatchPieces(firstpiece);
    return ((void*)0);
   }
   lastwasvariable = qtrue;

   matchpiece = (bot_matchpiece_t *) GetClearedHunkMemory(sizeof(bot_matchpiece_t));
   matchpiece->type = MT_VARIABLE;
   matchpiece->variable = token.intvalue;
   matchpiece->next = ((void*)0);
   if (lastpiece) lastpiece->next = matchpiece;
   else firstpiece = matchpiece;
   lastpiece = matchpiece;
  }
  else if (token.type == TT_STRING)
  {

   matchpiece = (bot_matchpiece_t *) GetClearedHunkMemory(sizeof(bot_matchpiece_t));
   matchpiece->firststring = ((void*)0);
   matchpiece->type = MT_STRING;
   matchpiece->variable = 0;
   matchpiece->next = ((void*)0);
   if (lastpiece) lastpiece->next = matchpiece;
   else firstpiece = matchpiece;
   lastpiece = matchpiece;

   lastmatchstring = ((void*)0);
   emptystring = qfalse;

   do
   {
    if (matchpiece->firststring)
    {
     if (!PC_ExpectTokenType(source, TT_STRING, 0, &token))
     {
      FreeSource(source);
      BotFreeMatchPieces(firstpiece);
      return ((void*)0);
     }
    }
    StripDoubleQuotes(token.string);
    matchstring = (bot_matchstring_t *) GetClearedHunkMemory(sizeof(bot_matchstring_t) + strlen(token.string) + 1);
    matchstring->string = (char *) matchstring + sizeof(bot_matchstring_t);
    strcpy(matchstring->string, token.string);
    if (!strlen(token.string)) emptystring = qtrue;
    matchstring->next = ((void*)0);
    if (lastmatchstring) lastmatchstring->next = matchstring;
    else matchpiece->firststring = matchstring;
    lastmatchstring = matchstring;
   } while(PC_CheckTokenString(source, "|"));

   if (!emptystring) lastwasvariable = qfalse;
  }
  else
  {
   SourceError(source, "invalid token %s\n", token.string);
   FreeSource(source);
   BotFreeMatchPieces(firstpiece);
   return ((void*)0);
  }
  if (PC_CheckTokenString(source, endtoken)) break;
  if (!PC_ExpectTokenString(source, ","))
  {
   FreeSource(source);
   BotFreeMatchPieces(firstpiece);
   return ((void*)0);
  }
 }
 return firstpiece;
}
