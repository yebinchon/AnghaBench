
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {unsigned int nFrameWidth; unsigned int nFrameHeight; scalar_t__ eColorFormat; int bFlagErrorConcealment; scalar_t__ nSliceHeight; scalar_t__ nStride; int eCompressionFormat; } ;
struct TYPE_15__ {TYPE_4__ image; } ;
struct TYPE_12__ {void* nVersion; } ;
struct TYPE_17__ {int nSize; int nBufferSize; TYPE_5__ format; int nPortIndex; TYPE_2__ nVersion; } ;
struct TYPE_16__ {TYPE_3__* imageResizer; int pOutputBufferHeader; TYPE_1__* imageDecoder; } ;
struct TYPE_13__ {int outPort; int component; int handle; int inPort; } ;
struct TYPE_11__ {int outPort; int component; int handle; } ;
typedef TYPE_6__ OPENMAX_JPEG_DECODER ;
typedef TYPE_7__ OMX_PARAM_PORTDEFINITIONTYPE ;


 int OMXJPEG_ERROR_MEMORY ;
 int OMXJPEG_OK ;
 int OMX_AllocateBuffer (int ,int *,int ,int *,int) ;
 scalar_t__ OMX_COLOR_Format32bitABGR8888 ;
 int OMX_CommandPortEnable ;
 int OMX_CommandStateSet ;
 int OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 int OMX_EventPortSettingsChanged ;
 int OMX_FALSE ;
 int OMX_GetParameter (int ,int ,TYPE_7__*) ;
 int OMX_IMAGE_CodingUnused ;
 int OMX_IndexParamPortDefinition ;
 int OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_SetParameter (int ,int ,TYPE_7__*) ;
 int OMX_SetupTunnel (int ,int ,int ,int ) ;
 int OMX_StateExecuting ;
 int OMX_StateIdle ;
 void* OMX_VERSION ;
 int TIMEOUT_MS ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int) ;
 int ilclient_change_component_state (int ,int ) ;
 int ilclient_disable_port (int ,int ) ;
 int ilclient_wait_for_event (int ,int ,int ,int,int ,int,int ,int ) ;
 int perror (char*) ;
 int printf (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int stderr ;
 int stdout ;

int
portSettingsChanged(OPENMAX_JPEG_DECODER * decoder)
{
    OMX_PARAM_PORTDEFINITIONTYPE portdef;



    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageDecoder->outPort;
    OMX_GetParameter(decoder->imageDecoder->handle,
       OMX_IndexParamPortDefinition, &portdef);

    unsigned int uWidth =
 (unsigned int) portdef.format.image.nFrameWidth;
    unsigned int uHeight =
 (unsigned int) portdef.format.image.nFrameHeight;


    portdef.nPortIndex = decoder->imageResizer->inPort;
    OMX_SetParameter(decoder->imageResizer->handle,
       OMX_IndexParamPortDefinition, &portdef);


    OMX_SetupTunnel(decoder->imageDecoder->handle,
      decoder->imageDecoder->outPort,
      decoder->imageResizer->handle,
      decoder->imageResizer->inPort);


    OMX_SendCommand(decoder->imageDecoder->handle,
      OMX_CommandPortEnable,
      decoder->imageDecoder->outPort, ((void*)0));
    OMX_SendCommand(decoder->imageResizer->handle,
      OMX_CommandPortEnable,
      decoder->imageResizer->inPort, ((void*)0));



    OMX_SendCommand(decoder->imageResizer->handle,
      OMX_CommandStateSet, OMX_StateIdle, ((void*)0));


    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete,
       OMX_CommandStateSet, 1,
       OMX_StateIdle, 1, 0, TIMEOUT_MS);




    ilclient_wait_for_event(decoder->imageDecoder->component,
       OMX_EventCmdComplete,
       OMX_CommandPortEnable, 1,
       decoder->imageDecoder->outPort, 1, 0,
       TIMEOUT_MS);
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete, OMX_CommandPortEnable, 1,
       decoder->imageResizer->inPort, 1, 0,
       TIMEOUT_MS);
    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventPortSettingsChanged,
       decoder->imageResizer->outPort, 1, 0, 1, 0,
       TIMEOUT_MS);

    ilclient_disable_port(decoder->imageResizer->component,
     decoder->imageResizer->outPort);


    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageResizer->outPort;
    OMX_GetParameter(decoder->imageResizer->handle,
       OMX_IndexParamPortDefinition, &portdef);


    portdef.format.image.eCompressionFormat = OMX_IMAGE_CodingUnused;
    portdef.format.image.eColorFormat = OMX_COLOR_Format32bitABGR8888;
    portdef.format.image.nFrameWidth = uWidth;
    portdef.format.image.nFrameHeight = uHeight;
    portdef.format.image.nStride = 0;
    portdef.format.image.nSliceHeight = 0;
    portdef.format.image.bFlagErrorConcealment = OMX_FALSE;

    OMX_SetParameter(decoder->imageResizer->handle,
       OMX_IndexParamPortDefinition, &portdef);



    OMX_GetParameter(decoder->imageResizer->handle,
       OMX_IndexParamPortDefinition, &portdef);


    ilclient_change_component_state(decoder->imageResizer->component,
        OMX_StateExecuting);


    printf
 ("Width: %u Height: %u Output Color Format: 0x%x Buffer Size: %u\n",
  (unsigned int) portdef.format.image.nFrameWidth,
  (unsigned int) portdef.format.image.nFrameHeight,
  (unsigned int) portdef.format.image.eColorFormat,
  (unsigned int) portdef.nBufferSize);
    fflush(stdout);


    OMX_SendCommand(decoder->imageResizer->handle,
      OMX_CommandPortEnable,
      decoder->imageResizer->outPort, ((void*)0));
    int ret = OMX_AllocateBuffer(decoder->imageResizer->handle,
          &decoder->pOutputBufferHeader,
          decoder->imageResizer->
          outPort,
          ((void*)0),
          portdef.nBufferSize);
    if (ret != OMX_ErrorNone) {
 perror("Eror allocating buffer");
 fprintf(stderr, "OMX_AllocateBuffer returned 0x%x allocating buffer size 0x%x\n", ret, portdef.nBufferSize);
 return OMXJPEG_ERROR_MEMORY;
    }

    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventCmdComplete,
       OMX_CommandPortEnable, 1,
       decoder->imageResizer->outPort, 1, 0,
       TIMEOUT_MS);

    return OMXJPEG_OK;
}
