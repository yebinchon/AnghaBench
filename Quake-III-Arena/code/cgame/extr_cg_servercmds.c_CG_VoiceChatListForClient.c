
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; int gender; } ;
typedef TYPE_1__ voiceChatList_t ;
typedef int headModelName ;
typedef int filename ;
struct TYPE_8__ {char* headModelName; int gender; int headSkinName; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_10__ {TYPE_2__* clientinfo; } ;
struct TYPE_9__ {char* headmodel; size_t voiceChatNum; } ;


 int CG_HeadModelVoiceChats (char*) ;
 int Com_sprintf (char*,int,char*,char*,...) ;
 int GENDER_MALE ;
 int MAX_CLIENTS ;
 int MAX_HEADMODELS ;
 int MAX_QPATH ;
 int MAX_VOICEFILES ;
 int Q_stricmp (char*,char*) ;
 TYPE_5__ cgs ;
 TYPE_4__* headModelVoiceChat ;
 scalar_t__ strlen (char*) ;
 TYPE_1__* voiceChatLists ;

voiceChatList_t *CG_VoiceChatListForClient( int clientNum ) {
 clientInfo_t *ci;
 int voiceChatNum, i, j, k, gender;
 char filename[MAX_QPATH], headModelName[MAX_QPATH];

 if ( clientNum < 0 || clientNum >= MAX_CLIENTS ) {
  clientNum = 0;
 }
 ci = &cgs.clientinfo[ clientNum ];

 for ( k = 0; k < 2; k++ ) {
  if ( k == 0 ) {
   if (ci->headModelName[0] == '*') {
    Com_sprintf( headModelName, sizeof(headModelName), "%s/%s", ci->headModelName+1, ci->headSkinName );
   }
   else {
    Com_sprintf( headModelName, sizeof(headModelName), "%s/%s", ci->headModelName, ci->headSkinName );
   }
  }
  else {
   if (ci->headModelName[0] == '*') {
    Com_sprintf( headModelName, sizeof(headModelName), "%s", ci->headModelName+1 );
   }
   else {
    Com_sprintf( headModelName, sizeof(headModelName), "%s", ci->headModelName );
   }
  }

  for ( i = 0; i < MAX_HEADMODELS; i++ ) {
   if (!Q_stricmp(headModelVoiceChat[i].headmodel, headModelName)) {
    break;
   }
  }
  if (i < MAX_HEADMODELS) {
   return &voiceChatLists[headModelVoiceChat[i].voiceChatNum];
  }

  for ( i = 0; i < MAX_HEADMODELS; i++ ) {
   if (!strlen(headModelVoiceChat[i].headmodel)) {
    Com_sprintf(filename, sizeof(filename), "scripts/%s.vc", headModelName);
    voiceChatNum = CG_HeadModelVoiceChats(filename);
    if (voiceChatNum == -1)
     break;
    Com_sprintf(headModelVoiceChat[i].headmodel, sizeof ( headModelVoiceChat[i].headmodel ),
       "%s", headModelName);
    headModelVoiceChat[i].voiceChatNum = voiceChatNum;
    return &voiceChatLists[headModelVoiceChat[i].voiceChatNum];
   }
  }
 }
 gender = ci->gender;
 for (k = 0; k < 2; k++) {

  for ( i = 0; i < MAX_VOICEFILES; i++ ) {
   if (strlen(voiceChatLists[i].name)) {
    if (voiceChatLists[i].gender == gender) {

     for ( j = 0; j < MAX_HEADMODELS; j++ ) {
      if (!strlen(headModelVoiceChat[j].headmodel)) {
       Com_sprintf(headModelVoiceChat[j].headmodel, sizeof ( headModelVoiceChat[j].headmodel ),
         "%s", headModelName);
       headModelVoiceChat[j].voiceChatNum = i;
       break;
      }
     }
     return &voiceChatLists[i];
    }
   }
  }

  if (gender == GENDER_MALE)
   break;
  gender = GENDER_MALE;
 }

 for ( j = 0; j < MAX_HEADMODELS; j++ ) {
  if (!strlen(headModelVoiceChat[j].headmodel)) {
   Com_sprintf(headModelVoiceChat[j].headmodel, sizeof ( headModelVoiceChat[j].headmodel ),
     "%s", headModelName);
   headModelVoiceChat[j].voiceChatNum = 0;
   break;
  }
 }

 return &voiceChatLists[0];
}
