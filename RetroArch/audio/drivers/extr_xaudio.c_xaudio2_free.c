
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; scalar_t__ hEvent; scalar_t__ pXAudio2; scalar_t__ pMasterVoice; scalar_t__ pSourceVoice; } ;
typedef TYPE_1__ xaudio2_t ;
typedef int delete ;


 int CloseHandle (scalar_t__) ;
 int IXAudio2MasteringVoice_DestroyVoice (scalar_t__) ;
 int IXAudio2SourceVoice_DestroyVoice (scalar_t__) ;
 int IXAudio2SourceVoice_Stop (scalar_t__,int ,int ) ;
 int IXAudio2_Release (scalar_t__) ;
 int XAUDIO2_COMMIT_NOW ;
 int free (int ) ;

__attribute__((used)) static void xaudio2_free(xaudio2_t *handle)
{
   if (!handle)
      return;

   if (handle->pSourceVoice)
   {
      IXAudio2SourceVoice_Stop(handle->pSourceVoice,
            0, XAUDIO2_COMMIT_NOW);
      IXAudio2SourceVoice_DestroyVoice(handle->pSourceVoice);
   }

   if (handle->pMasterVoice)
   {
      IXAudio2MasteringVoice_DestroyVoice(handle->pMasterVoice);
   }

   if (handle->pXAudio2)
   {
      IXAudio2_Release(handle->pXAudio2);
   }

   if (handle->hEvent)
      CloseHandle(handle->hEvent);

   free(handle->buf);




   free(handle);

}
