
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int inputBufferHeaderCount; int * client; TYPE_2__* imageResizer; TYPE_1__* imageDecoder; int * pOutputBufferHeader; int ** ppInputBufferHeader; } ;
struct TYPE_6__ {int component; int inPort; int handle; int outPort; } ;
struct TYPE_5__ {int component; int outPort; int handle; int inPort; } ;
typedef TYPE_3__ OPENMAX_JPEG_DECODER ;
typedef int OMX_BUFFERHEADERTYPE ;


 int OMX_CommandFlush ;
 int OMX_CommandPortDisable ;
 int OMX_CommandStateSet ;
 int OMX_Deinit () ;
 int OMX_EventCmdComplete ;
 int OMX_FreeBuffer (int ,int ,int *) ;
 int OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_SetupTunnel (int ,int ,int *,int ) ;
 int OMX_StateIdle ;
 int OMX_StateLoaded ;
 int TIMEOUT_MS ;
 int ilclient_change_component_state (int ,int ) ;
 int ilclient_destroy (int *) ;
 int ilclient_wait_for_event (int ,int ,int ,int ,int ,int,int ,int ) ;

void
cleanup(OPENMAX_JPEG_DECODER * decoder)
{

    OMX_SendCommand(decoder->imageDecoder->handle,
      OMX_CommandFlush, decoder->imageDecoder->outPort,
      ((void*)0));
    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete, OMX_CommandFlush, 0,
       decoder->imageDecoder->outPort, 0, 0,
       TIMEOUT_MS);
    OMX_SendCommand(decoder->imageResizer->handle, OMX_CommandFlush,
      decoder->imageResizer->inPort, ((void*)0));
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandFlush, 0,
       decoder->imageResizer->inPort, 1, 0,
       TIMEOUT_MS);

    OMX_SendCommand(decoder->imageDecoder->handle, OMX_CommandPortDisable,
      decoder->imageDecoder->inPort, ((void*)0));

    int i = 0;
    for (i = 0; i < decoder->inputBufferHeaderCount; i++) {
 OMX_BUFFERHEADERTYPE *vpBufHeader =
     decoder->ppInputBufferHeader[i];

 OMX_FreeBuffer(decoder->imageDecoder->handle,
         decoder->imageDecoder->inPort, vpBufHeader);
    }

    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete, OMX_CommandPortDisable,
       0, decoder->imageDecoder->inPort, 0, 0,
       TIMEOUT_MS);

    OMX_SendCommand(decoder->imageResizer->handle, OMX_CommandPortDisable,
      decoder->imageResizer->outPort, ((void*)0));

    OMX_FreeBuffer(decoder->imageResizer->handle,
     decoder->imageResizer->outPort,
     decoder->pOutputBufferHeader);

    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandPortDisable,
       0, decoder->imageResizer->outPort, 0, 0,
       TIMEOUT_MS);

    OMX_SendCommand(decoder->imageDecoder->handle, OMX_CommandPortDisable,
      decoder->imageDecoder->outPort, ((void*)0));
    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete, OMX_CommandPortDisable,
       0, decoder->imageDecoder->outPort, 0, 0,
       TIMEOUT_MS);

    OMX_SendCommand(decoder->imageResizer->handle, OMX_CommandPortDisable,
      decoder->imageResizer->inPort, ((void*)0));
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandPortDisable,
       0, decoder->imageResizer->inPort, 0, 0,
       TIMEOUT_MS);

    OMX_SetupTunnel(decoder->imageDecoder->handle,
      decoder->imageDecoder->outPort, ((void*)0), 0);
    OMX_SetupTunnel(decoder->imageResizer->handle,
      decoder->imageResizer->inPort, ((void*)0), 0);

    ilclient_change_component_state(decoder->imageDecoder->component,
        OMX_StateIdle);
    ilclient_change_component_state(decoder->imageResizer->component,
        OMX_StateIdle);

    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete, OMX_CommandStateSet, 0,
       OMX_StateIdle, 0, 0, TIMEOUT_MS);
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandStateSet, 0,
       OMX_StateIdle, 0, 0, TIMEOUT_MS);

    ilclient_change_component_state(decoder->imageDecoder->component,
        OMX_StateLoaded);
    ilclient_change_component_state(decoder->imageResizer->component,
        OMX_StateLoaded);

    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete, OMX_CommandStateSet, 0,
       OMX_StateLoaded, 0, 0, TIMEOUT_MS);
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandStateSet, 0,
       OMX_StateLoaded, 0, 0, TIMEOUT_MS);

    OMX_Deinit();

    if (decoder->client != ((void*)0)) {
 ilclient_destroy(decoder->client);
    }
}
