
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int audio_render; } ;
struct TYPE_7__ {int nVersion; } ;
struct TYPE_8__ {int nSize; int nPortIndex; int nU32; TYPE_1__ nVersion; } ;
typedef TYPE_2__ OMX_PARAM_U32TYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_3__ AUDIOPLAY_STATE_T ;


 int ILC_GET_HANDLE (int ) ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_GetConfig (int ,int ,TYPE_2__*) ;
 int OMX_IndexConfigAudioRenderingLatency ;
 int OMX_VERSION ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;

uint32_t audioplay_get_latency(AUDIOPLAY_STATE_T *st)
{
   OMX_PARAM_U32TYPE param;
   OMX_ERRORTYPE error;

   memset(&param, 0, sizeof(OMX_PARAM_U32TYPE));
   param.nSize = sizeof(OMX_PARAM_U32TYPE);
   param.nVersion.nVersion = OMX_VERSION;
   param.nPortIndex = 100;

   error = OMX_GetConfig(ILC_GET_HANDLE(st->audio_render), OMX_IndexConfigAudioRenderingLatency, &param);
   assert(error == OMX_ErrorNone);

   return param.nU32;
}
