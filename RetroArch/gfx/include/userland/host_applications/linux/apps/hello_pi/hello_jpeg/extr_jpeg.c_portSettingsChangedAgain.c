
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nVersion; } ;
struct TYPE_13__ {int nSize; int nPortIndex; TYPE_1__ nVersion; } ;
struct TYPE_12__ {TYPE_3__* imageResizer; TYPE_2__* imageDecoder; } ;
struct TYPE_11__ {int outPort; int component; int inPort; int handle; } ;
struct TYPE_10__ {int outPort; int component; int handle; } ;
typedef TYPE_4__ OPENMAX_JPEG_DECODER ;
typedef TYPE_5__ OMX_PARAM_PORTDEFINITIONTYPE ;


 int OMXJPEG_OK ;
 int OMX_EventPortSettingsChanged ;
 int OMX_GetParameter (int ,int ,TYPE_5__*) ;
 int OMX_IndexParamPortDefinition ;
 int OMX_SetParameter (int ,int ,TYPE_5__*) ;
 int OMX_VERSION ;
 int TIMEOUT_MS ;
 int ilclient_disable_port (int ,int ) ;
 int ilclient_enable_port (int ,int ) ;
 int ilclient_wait_for_event (int ,int ,int ,int,int ,int ,int ,int ) ;

int
portSettingsChangedAgain(OPENMAX_JPEG_DECODER * decoder)
{
    ilclient_disable_port(decoder->imageDecoder->component,
     decoder->imageDecoder->outPort);
    ilclient_disable_port(decoder->imageResizer->component,
     decoder->imageResizer->inPort);

    OMX_PARAM_PORTDEFINITIONTYPE portdef;



    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageDecoder->outPort;
    OMX_GetParameter(decoder->imageDecoder->handle,
       OMX_IndexParamPortDefinition, &portdef);


    portdef.nPortIndex = decoder->imageResizer->inPort;
    OMX_SetParameter(decoder->imageResizer->handle,
       OMX_IndexParamPortDefinition, &portdef);


    ilclient_enable_port(decoder->imageDecoder->component,
    decoder->imageDecoder->outPort);
    ilclient_enable_port(decoder->imageResizer->component,
    decoder->imageResizer->inPort);


    ilclient_wait_for_event(decoder->imageResizer->component,
       OMX_EventPortSettingsChanged,
       decoder->imageResizer->outPort, 1,
       0, 0, 0, TIMEOUT_MS);

    return OMXJPEG_OK;
}
