
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bufferedVoiceChat_t ;
struct TYPE_2__ {size_t voiceChatBufferIn; int voiceChatBufferOut; scalar_t__ intermissionStarted; } ;


 int CG_PlayVoiceChat (int *) ;
 int MAX_VOICECHATBUFFER ;
 TYPE_1__ cg ;
 int memcpy (int *,int *,int) ;
 int * voiceChatBuffer ;

void CG_AddBufferedVoiceChat( bufferedVoiceChat_t *vchat ) {
}
