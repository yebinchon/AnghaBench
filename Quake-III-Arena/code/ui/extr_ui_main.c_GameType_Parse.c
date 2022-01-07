
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {size_t numJoinGameTypes; size_t numGameTypes; TYPE_2__* gameTypes; TYPE_1__* joinGameTypes; } ;
struct TYPE_5__ {int gtEnum; int gameType; } ;
struct TYPE_4__ {int gtEnum; int gameType; } ;


 char* COM_ParseExt (char**,scalar_t__) ;
 int Com_Printf (char*) ;
 int Int_Parse (char**,int *) ;
 size_t MAX_GAMETYPES ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int String_Parse (char**,int *) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static qboolean GameType_Parse(char **p, qboolean join) {
 char *token;

 token = COM_ParseExt(p, qtrue);

 if (token[0] != '{') {
  return qfalse;
 }

 if (join) {
  uiInfo.numJoinGameTypes = 0;
 } else {
  uiInfo.numGameTypes = 0;
 }

 while ( 1 ) {
  token = COM_ParseExt(p, qtrue);

  if (Q_stricmp(token, "}") == 0) {
   return qtrue;
  }

  if ( !token || token[0] == 0 ) {
   return qfalse;
  }

  if (token[0] == '{') {

   if (join) {
    if (!String_Parse(p, &uiInfo.joinGameTypes[uiInfo.numJoinGameTypes].gameType) || !Int_Parse(p, &uiInfo.joinGameTypes[uiInfo.numJoinGameTypes].gtEnum)) {
     return qfalse;
    }
   } else {
    if (!String_Parse(p, &uiInfo.gameTypes[uiInfo.numGameTypes].gameType) || !Int_Parse(p, &uiInfo.gameTypes[uiInfo.numGameTypes].gtEnum)) {
     return qfalse;
    }
   }

   if (join) {
    if (uiInfo.numJoinGameTypes < MAX_GAMETYPES) {
     uiInfo.numJoinGameTypes++;
    } else {
     Com_Printf("Too many net game types, last one replace!\n");
    }
   } else {
    if (uiInfo.numGameTypes < MAX_GAMETYPES) {
     uiInfo.numGameTypes++;
    } else {
     Com_Printf("Too many game types, last one replace!\n");
    }
   }

   token = COM_ParseExt(p, qtrue);
   if (token[0] != '}') {
    return qfalse;
   }
  }
 }
 return qfalse;
}
