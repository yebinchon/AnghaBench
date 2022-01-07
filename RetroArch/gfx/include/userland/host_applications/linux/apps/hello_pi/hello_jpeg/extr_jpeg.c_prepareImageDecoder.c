
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ outPort; scalar_t__ inPort; int handle; int component; } ;
struct TYPE_7__ {int nVersion; } ;
struct TYPE_9__ {int nSize; int nPorts; scalar_t__ nStartPortNumber; TYPE_1__ nVersion; } ;
struct TYPE_8__ {TYPE_5__* imageDecoder; int client; } ;
typedef TYPE_2__ OPENMAX_JPEG_DECODER ;
typedef TYPE_3__ OMX_PORT_PARAM_TYPE ;
typedef int COMPONENT_DETAILS ;


 int ILCLIENT_DISABLE_ALL_PORTS ;
 int ILCLIENT_ENABLE_INPUT_BUFFERS ;
 int ILC_GET_HANDLE (int ) ;
 int OMXJPEG_ERROR_CREATING_COMP ;
 int OMXJPEG_ERROR_MEMORY ;
 int OMXJPEG_ERROR_WRONG_NO_PORTS ;
 int OMXJPEG_OK ;
 int OMX_GetParameter (int ,int ,TYPE_3__*) ;
 int OMX_IndexParamImageInit ;
 int OMX_VERSION ;
 int ilclient_create_component (int ,int *,char*,int) ;
 TYPE_5__* malloc (int) ;
 int perror (char*) ;

int
prepareImageDecoder(OPENMAX_JPEG_DECODER * decoder)
{
    decoder->imageDecoder = malloc(sizeof(COMPONENT_DETAILS));
    if (decoder->imageDecoder == ((void*)0)) {
 perror("malloc image decoder");
 return OMXJPEG_ERROR_MEMORY;
    }

    int ret = ilclient_create_component(decoder->client,
          &decoder->
          imageDecoder->
          component,
          "image_decode",
          ILCLIENT_DISABLE_ALL_PORTS
          |
          ILCLIENT_ENABLE_INPUT_BUFFERS);

    if (ret != 0) {
 perror("image decode");
 return OMXJPEG_ERROR_CREATING_COMP;
    }

    decoder->imageDecoder->handle =
 ILC_GET_HANDLE(decoder->imageDecoder->component);


    OMX_PORT_PARAM_TYPE port;
    port.nSize = sizeof(OMX_PORT_PARAM_TYPE);
    port.nVersion.nVersion = OMX_VERSION;

    OMX_GetParameter(decoder->imageDecoder->handle,
       OMX_IndexParamImageInit, &port);
    if (port.nPorts != 2) {
 return OMXJPEG_ERROR_WRONG_NO_PORTS;
    }
    decoder->imageDecoder->inPort = port.nStartPortNumber;
    decoder->imageDecoder->outPort = port.nStartPortNumber + 1;

    return OMXJPEG_OK;
}
