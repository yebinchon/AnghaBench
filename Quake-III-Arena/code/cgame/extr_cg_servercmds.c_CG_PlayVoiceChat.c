
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ clientNum; int message; int voiceOnly; int cmd; int snd; } ;
typedef TYPE_3__ bufferedVoiceChat_t ;
struct TYPE_17__ {size_t voiceChatBufferOut; scalar_t__ time; TYPE_2__* snap; scalar_t__ intermissionStarted; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {int acceptTask; scalar_t__ acceptLeader; int acceptVoice; scalar_t__ acceptOrderTime; } ;
struct TYPE_13__ {scalar_t__ snd; } ;
struct TYPE_10__ {scalar_t__ clientNum; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;


 int CG_AddToTeamChat (int ) ;
 int CG_Printf (char*,int ) ;
 int CG_ShowResponseHead () ;
 int CG_ValidOrder (int ) ;
 int CHAN_VOICE ;
 int Q_strncpyz (int ,int ,int) ;
 TYPE_8__ cg ;
 TYPE_7__ cg_noVoiceChats ;
 TYPE_6__ cg_noVoiceText ;
 TYPE_5__ cgs ;
 int trap_S_StartLocalSound (int ,int ) ;
 TYPE_4__* voiceChatBuffer ;

void CG_PlayVoiceChat( bufferedVoiceChat_t *vchat ) {
}
