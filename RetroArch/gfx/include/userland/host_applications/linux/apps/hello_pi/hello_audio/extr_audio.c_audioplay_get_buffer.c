
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int sema; TYPE_1__* user_buffer_list; int audio_render; } ;
struct TYPE_5__ {int * pBuffer; struct TYPE_5__* pAppPrivate; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ AUDIOPLAY_STATE_T ;


 TYPE_1__* ilclient_get_input_buffer (int ,int,int ) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;

uint8_t *audioplay_get_buffer(AUDIOPLAY_STATE_T *st)
{
   OMX_BUFFERHEADERTYPE *hdr = ((void*)0);

   hdr = ilclient_get_input_buffer(st->audio_render, 100, 0);

   if(hdr)
   {

      sem_wait(&st->sema);

      hdr->pAppPrivate = st->user_buffer_list;
      st->user_buffer_list = hdr;

      sem_post(&st->sema);
   }

   return hdr ? hdr->pBuffer : ((void*)0);
}
