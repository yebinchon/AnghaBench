
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voiceChatList_t ;
typedef int sfxHandle_t ;
typedef int qboolean ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_8__ {int clientNum; int message; int cmd; int voiceOnly; int snd; } ;
typedef TYPE_2__ bufferedVoiceChat_t ;
struct TYPE_11__ {scalar_t__ intermissionStarted; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int currentVoiceClient; TYPE_1__* clientinfo; } ;


 int CG_AddBufferedVoiceChat (TYPE_2__*) ;
 scalar_t__ CG_GetVoiceChat (int *,char const*,int *,char**) ;
 int * CG_VoiceChatListForClient (int) ;
 int Com_sprintf (int ,int,char*,int ,int ,int,char*) ;
 int MAX_CLIENTS ;
 int Q_COLOR_ESCAPE ;
 int Q_strncpyz (int ,char const*,int) ;
 int SAY_TEAM ;
 int SAY_TELL ;
 TYPE_5__ cg ;
 TYPE_4__ cg_teamChatsOnly ;
 TYPE_3__ cgs ;

void CG_VoiceChatLocal( int mode, qboolean voiceOnly, int clientNum, int color, const char *cmd ) {
}
