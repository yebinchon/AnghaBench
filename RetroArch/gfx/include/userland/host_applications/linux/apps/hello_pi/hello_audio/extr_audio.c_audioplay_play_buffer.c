
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_6__ {int bytes_per_sample; int audio_render; int sema; TYPE_1__* user_buffer_list; } ;
struct TYPE_5__ {int nAllocLen; int nFilledLen; scalar_t__ nOffset; struct TYPE_5__* pAppPrivate; int * pBuffer; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ AUDIOPLAY_STATE_T ;


 int ILC_GET_HANDLE (int ) ;
 scalar_t__ OMX_EmptyThisBuffer (int ,TYPE_1__*) ;
 scalar_t__ OMX_ErrorNone ;
 int assert (int) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

int32_t audioplay_play_buffer(AUDIOPLAY_STATE_T *st,
                              uint8_t *buffer,
                              uint32_t length)
{
   OMX_BUFFERHEADERTYPE *hdr = ((void*)0), *prev = ((void*)0);
   int32_t ret = -1;

   if(length % st->bytes_per_sample)
      return ret;

   sem_wait(&st->sema);


   hdr = st->user_buffer_list;
   while(hdr != ((void*)0) && hdr->pBuffer != buffer && hdr->nAllocLen < length)
   {
      prev = hdr;
      hdr = hdr->pAppPrivate;
   }

   if(hdr)
   {
      ret = 0;
      if(prev)
         prev->pAppPrivate = hdr->pAppPrivate;
      else
         st->user_buffer_list = hdr->pAppPrivate;
   }

   sem_post(&st->sema);

   if(hdr)
   {
      OMX_ERRORTYPE error;

      hdr->pAppPrivate = ((void*)0);
      hdr->nOffset = 0;
      hdr->nFilledLen = length;

      error = OMX_EmptyThisBuffer(ILC_GET_HANDLE(st->audio_render), hdr);
      assert(error == OMX_ErrorNone);
   }

   return ret;
}
