
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ppbufw; int wf; int ppbufsec; scalar_t__ ToWritePos; } ;
typedef int DWORD ;
typedef TYPE_1__ DSFobby ;


 int DSBPLAY_LOOPING ;
 int DSBSTATUS_BUFFERLOST ;
 int DSBSTATUS_PLAYING ;
 int IDirectSoundBuffer_GetStatus (int ,int*) ;
 int IDirectSoundBuffer_Play (int ,int ,int ,int ) ;
 int IDirectSoundBuffer_Restore (int ) ;
 int IDirectSoundBuffer_SetCurrentPosition (int ,int ) ;
 int IDirectSoundBuffer_SetFormat (int ,int *) ;

__attribute__((used)) static void CheckStatus(DSFobby *tmp)
{
 DWORD status=0;

 IDirectSoundBuffer_GetStatus(tmp->ppbufw, &status);
 if(status&DSBSTATUS_BUFFERLOST)
  IDirectSoundBuffer_Restore(tmp->ppbufw);

 if(!(status&DSBSTATUS_PLAYING))
 {
  tmp->ToWritePos=0;
  IDirectSoundBuffer_SetCurrentPosition(tmp->ppbufsec,0);
  IDirectSoundBuffer_SetFormat(tmp->ppbufw,&tmp->wf);
  IDirectSoundBuffer_Play(tmp->ppbufw,0,0,DSBPLAY_LOOPING);
 }
}
