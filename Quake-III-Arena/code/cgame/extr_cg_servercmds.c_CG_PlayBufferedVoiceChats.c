
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ voiceChatTime; scalar_t__ time; size_t voiceChatBufferOut; size_t voiceChatBufferIn; } ;
struct TYPE_4__ {scalar_t__ snd; } ;


 int CG_PlayVoiceChat (TYPE_1__*) ;
 int MAX_VOICECHATBUFFER ;
 TYPE_2__ cg ;
 TYPE_1__* voiceChatBuffer ;

void CG_PlayBufferedVoiceChats( void ) {
}
