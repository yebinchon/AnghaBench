
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int sema; int client; int list; int audio_render; int user_buffer_list; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ AUDIOPLAY_STATE_T ;


 int ILC_GET_HANDLE (int ) ;
 int OMX_CommandStateSet ;
 scalar_t__ OMX_Deinit () ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_StateIdle ;
 int OMX_StateLoaded ;
 int assert (int) ;
 int free (TYPE_1__*) ;
 int ilclient_change_component_state (int ,int ) ;
 int ilclient_cleanup_components (int ) ;
 int ilclient_destroy (int ) ;
 int ilclient_disable_port_buffers (int ,int,int ,int *,int *) ;
 int sem_destroy (int *) ;

int32_t audioplay_delete(AUDIOPLAY_STATE_T *st)
{
   OMX_ERRORTYPE error;

   ilclient_change_component_state(st->audio_render, OMX_StateIdle);

   error = OMX_SendCommand(ILC_GET_HANDLE(st->audio_render), OMX_CommandStateSet, OMX_StateLoaded, ((void*)0));
   assert(error == OMX_ErrorNone);

   ilclient_disable_port_buffers(st->audio_render, 100, st->user_buffer_list, ((void*)0), ((void*)0));
   ilclient_change_component_state(st->audio_render, OMX_StateLoaded);
   ilclient_cleanup_components(st->list);

   error = OMX_Deinit();
   assert(error == OMX_ErrorNone);

   ilclient_destroy(st->client);

   sem_destroy(&st->sema);
   free(st);

   return 0;
}
