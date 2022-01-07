
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numVoiceChats; TYPE_1__* voiceChats; } ;
typedef TYPE_2__ voiceChatList_t ;
typedef int sfxHandle_t ;
struct TYPE_4__ {int numSounds; char** chats; int * sounds; int id; } ;


 int Q_stricmp (char const*,int ) ;
 int qfalse ;
 int qtrue ;
 int random () ;

int CG_GetVoiceChat( voiceChatList_t *voiceChatList, const char *id, sfxHandle_t *snd, char **chat) {
 int i, rnd;

 for ( i = 0; i < voiceChatList->numVoiceChats; i++ ) {
  if ( !Q_stricmp( id, voiceChatList->voiceChats[i].id ) ) {
   rnd = random() * voiceChatList->voiceChats[i].numSounds;
   *snd = voiceChatList->voiceChats[i].sounds[rnd];
   *chat = voiceChatList->voiceChats[i].chats[rnd];
   return qtrue;
  }
 }
 return qfalse;
}
