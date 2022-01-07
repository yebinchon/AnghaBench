
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_6__ {int BufHowMuch; int DSBufferSize; int ToWritePos; int ppbufw; } ;
struct TYPE_5__ {TYPE_2__* private; } ;
typedef TYPE_1__ SexyAL_device ;
typedef int DWORD ;
typedef TYPE_2__ DSFobby ;


 int CheckStatus (TYPE_2__*) ;
 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_GetCurrentPosition (int ,int*,int*) ;

uint32_t SexyALI_DSound_RawCanWrite(SexyAL_device *device)
{
 DSFobby *tmp=device->private;
 DWORD CurWritePos,CurPlayPos=0;
 CheckStatus(tmp);

 CurWritePos=0;

 if(IDirectSoundBuffer_GetCurrentPosition(tmp->ppbufw,&CurPlayPos,&CurWritePos)==DS_OK)
 {

 }
 CurWritePos=(CurPlayPos+tmp->BufHowMuch)%tmp->DSBufferSize;





 if(((int32_t)tmp->ToWritePos-(int32_t)CurWritePos) >= (tmp->DSBufferSize/2))
 {
  CurWritePos+=tmp->DSBufferSize;

 }
 if(tmp->ToWritePos<CurWritePos)
 {
  int32_t howmuch=(int32_t)CurWritePos-(int32_t)tmp->ToWritePos;
  if(howmuch > tmp->BufHowMuch)
  {
   tmp->ToWritePos=CurWritePos%tmp->DSBufferSize;





  }
  return(CurWritePos-tmp->ToWritePos);
 }
 else
  return(0);
}
