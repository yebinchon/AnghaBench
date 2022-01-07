
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* nVersion; } ;
struct TYPE_16__ {int nSize; int eCompressionFormat; int nPortIndex; TYPE_1__ nVersion; } ;
struct TYPE_12__ {void* nVersion; } ;
struct TYPE_15__ {int nSize; int nBufferCountActual; int nBufferSize; int nPortIndex; TYPE_2__ nVersion; } ;
struct TYPE_14__ {int inputBufferHeaderCount; TYPE_3__* imageDecoder; int ** ppInputBufferHeader; } ;
struct TYPE_13__ {int component; int handle; int inPort; } ;
typedef TYPE_4__ OPENMAX_JPEG_DECODER ;
typedef TYPE_5__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef TYPE_6__ OMX_IMAGE_PARAM_PORTFORMATTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;


 int OMXJPEG_ERROR_EXECUTING ;
 int OMXJPEG_ERROR_MEMORY ;
 int OMXJPEG_OK ;
 scalar_t__ OMX_AllocateBuffer (int ,int **,int ,void*,int ) ;
 int OMX_CommandPortEnable ;
 int OMX_CommandStateSet ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 int OMX_GetParameter (int ,int ,TYPE_5__*) ;
 int OMX_IMAGE_CodingJPEG ;
 int OMX_IndexParamImagePortFormat ;
 int OMX_IndexParamPortDefinition ;
 int OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_SetParameter (int ,int ,TYPE_6__*) ;
 int OMX_StateExecuting ;
 int OMX_StateIdle ;
 void* OMX_VERSION ;
 int TIMEOUT_MS ;
 int fprintf (int ,char*,int) ;
 int ilclient_change_component_state (int ,int ) ;
 int ilclient_wait_for_event (int ,int ,int ,int ,int ,int,int ,int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_6__*,int ,int) ;
 int perror (char*) ;
 int stderr ;

int
startupImageDecoder(OPENMAX_JPEG_DECODER * decoder)
{

    ilclient_change_component_state(decoder->imageDecoder->component,
        OMX_StateIdle);


    OMX_IMAGE_PARAM_PORTFORMATTYPE imagePortFormat;
    memset(&imagePortFormat, 0, sizeof(OMX_IMAGE_PARAM_PORTFORMATTYPE));
    imagePortFormat.nSize = sizeof(OMX_IMAGE_PARAM_PORTFORMATTYPE);
    imagePortFormat.nVersion.nVersion = OMX_VERSION;
    imagePortFormat.nPortIndex = decoder->imageDecoder->inPort;
    imagePortFormat.eCompressionFormat = OMX_IMAGE_CodingJPEG;
    OMX_SetParameter(decoder->imageDecoder->handle,
       OMX_IndexParamImagePortFormat, &imagePortFormat);


    OMX_PARAM_PORTDEFINITIONTYPE portdef;
    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageDecoder->inPort;
    OMX_GetParameter(decoder->imageDecoder->handle,
       OMX_IndexParamPortDefinition, &portdef);


    OMX_SendCommand(decoder->imageDecoder->handle,
      OMX_CommandPortEnable,
      decoder->imageDecoder->inPort, ((void*)0));
    decoder->inputBufferHeaderCount = portdef.nBufferCountActual;

    decoder->ppInputBufferHeader =
 (OMX_BUFFERHEADERTYPE **) malloc(sizeof(void) *
      decoder->inputBufferHeaderCount);

    int i;
    for (i = 0; i < decoder->inputBufferHeaderCount; i++) {
 if (OMX_AllocateBuffer(decoder->imageDecoder->handle,
          &decoder->ppInputBufferHeader[i],
          decoder->imageDecoder->inPort,
          (void *) i,
          portdef.nBufferSize) != OMX_ErrorNone) {
     perror("Allocate decode buffer");
     return OMXJPEG_ERROR_MEMORY;
 }
    }


    int ret =
 ilclient_wait_for_event(decoder->imageDecoder->component,
    OMX_EventCmdComplete,
    OMX_CommandPortEnable, 0,
    decoder->imageDecoder->inPort, 0,
    0, TIMEOUT_MS);
    if (ret != 0) {
 fprintf(stderr, "Did not get port enable %d\n", ret);
 return OMXJPEG_ERROR_EXECUTING;
    }

    ret = OMX_SendCommand(decoder->imageDecoder->handle,
     OMX_CommandStateSet, OMX_StateExecuting, ((void*)0));
    if (ret != 0) {
 fprintf(stderr, "Error starting image decoder %x\n", ret);
 return OMXJPEG_ERROR_EXECUTING;
    }
    ret = ilclient_wait_for_event(decoder->imageDecoder->component,
      OMX_EventCmdComplete,
      OMX_StateExecuting, 0, 0, 1, 0,
      TIMEOUT_MS);
    if (ret != 0) {
 fprintf(stderr, "Did not receive executing stat %d\n", ret);

    }

    return OMXJPEG_OK;
}
