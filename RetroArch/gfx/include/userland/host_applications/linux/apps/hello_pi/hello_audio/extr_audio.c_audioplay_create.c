
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_14__ {int bytes_per_sample; int num_buffers; int * audio_render; int sema; int * client; int ** list; } ;
struct TYPE_12__ {void* nVersion; } ;
struct TYPE_13__ {int nSize; int nPortIndex; int nBufferSize; int nBufferCountActual; int nChannels; int nSamplingRate; int nBitPerSample; void** eChannelMapping; int ePCMMode; int bInterleaved; int eEndian; int eNumData; TYPE_1__ nVersion; } ;
typedef TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_2__ OMX_AUDIO_PARAM_PCMMODETYPE ;
typedef TYPE_4__ AUDIOPLAY_STATE_T ;


 int ILCLIENT_DISABLE_ALL_PORTS ;
 int ILCLIENT_ENABLE_INPUT_BUFFERS ;
 int ILC_GET_HANDLE (int *) ;
 void* OMX_AUDIO_ChannelCF ;
 void* OMX_AUDIO_ChannelLF ;
 void* OMX_AUDIO_ChannelLFE ;
 void* OMX_AUDIO_ChannelLR ;
 void* OMX_AUDIO_ChannelLS ;
 void* OMX_AUDIO_ChannelRF ;
 void* OMX_AUDIO_ChannelRR ;
 void* OMX_AUDIO_ChannelRS ;
 int OMX_AUDIO_PCMModeLinear ;
 scalar_t__ OMX_Deinit () ;
 int OMX_EndianLittle ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_GetParameter (int ,int ,TYPE_2__*) ;
 int OMX_IndexParamAudioPcm ;
 int OMX_IndexParamPortDefinition ;
 scalar_t__ OMX_Init () ;
 int OMX_NumericalDataSigned ;
 scalar_t__ OMX_SetParameter (int ,int ,TYPE_2__*) ;
 int OMX_StateExecuting ;
 int OMX_StateIdle ;
 int OMX_StateLoaded ;
 int OMX_TRUE ;
 void* OMX_VERSION ;
 int OUT_CHANNELS (int) ;
 int assert (int) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int ilclient_change_component_state (int *,int ) ;
 int ilclient_cleanup_components (int **) ;
 int ilclient_create_component (int *,int **,char*,int) ;
 int ilclient_destroy (int *) ;
 scalar_t__ ilclient_enable_port_buffers (int *,int,int *,int *,int *) ;
 int * ilclient_init () ;
 int ilclient_set_empty_buffer_done_callback (int *,int ,TYPE_4__*) ;
 int input_buffer_callback ;
 int memset (TYPE_2__*,int ,int) ;
 int sem_destroy (int *) ;
 scalar_t__ sem_init (int *,int ,int) ;

int32_t audioplay_create(AUDIOPLAY_STATE_T **handle,
                         uint32_t sample_rate,
                         uint32_t num_channels,
                         uint32_t bit_depth,
                         uint32_t num_buffers,
                         uint32_t buffer_size)
{
   uint32_t bytes_per_sample = (bit_depth * OUT_CHANNELS(num_channels)) >> 3;
   int32_t ret = -1;

   *handle = ((void*)0);


   if(sample_rate >= 8000 && sample_rate <= 192000 &&
      (num_channels >= 1 && num_channels <= 8) &&
      (bit_depth == 16 || bit_depth == 32) &&
      num_buffers > 0 &&
      buffer_size >= bytes_per_sample)
   {

      int size = (buffer_size + 15) & ~15;
      AUDIOPLAY_STATE_T *st;


      st = calloc(1, sizeof(AUDIOPLAY_STATE_T));

      if(st)
      {
         OMX_ERRORTYPE error;
         OMX_PARAM_PORTDEFINITIONTYPE param;
         OMX_AUDIO_PARAM_PCMMODETYPE pcm;
         int32_t s;

         ret = 0;
         *handle = st;


         s = sem_init(&st->sema, 0, 1);
         assert(s == 0);

         st->bytes_per_sample = bytes_per_sample;
         st->num_buffers = num_buffers;

         st->client = ilclient_init();
         assert(st->client != ((void*)0));

         ilclient_set_empty_buffer_done_callback(st->client, input_buffer_callback, st);

         error = OMX_Init();
         assert(error == OMX_ErrorNone);

         ilclient_create_component(st->client, &st->audio_render, "audio_render", ILCLIENT_ENABLE_INPUT_BUFFERS | ILCLIENT_DISABLE_ALL_PORTS);
         assert(st->audio_render != ((void*)0));

         st->list[0] = st->audio_render;


         memset(&param, 0, sizeof(OMX_PARAM_PORTDEFINITIONTYPE));
         param.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
         param.nVersion.nVersion = OMX_VERSION;
         param.nPortIndex = 100;

         error = OMX_GetParameter(ILC_GET_HANDLE(st->audio_render), OMX_IndexParamPortDefinition, &param);
         assert(error == OMX_ErrorNone);

         param.nBufferSize = size;
         param.nBufferCountActual = num_buffers;

         error = OMX_SetParameter(ILC_GET_HANDLE(st->audio_render), OMX_IndexParamPortDefinition, &param);
         assert(error == OMX_ErrorNone);


         memset(&pcm, 0, sizeof(OMX_AUDIO_PARAM_PCMMODETYPE));
         pcm.nSize = sizeof(OMX_AUDIO_PARAM_PCMMODETYPE);
         pcm.nVersion.nVersion = OMX_VERSION;
         pcm.nPortIndex = 100;
         pcm.nChannels = OUT_CHANNELS(num_channels);
         pcm.eNumData = OMX_NumericalDataSigned;
         pcm.eEndian = OMX_EndianLittle;
         pcm.nSamplingRate = sample_rate;
         pcm.bInterleaved = OMX_TRUE;
         pcm.nBitPerSample = bit_depth;
         pcm.ePCMMode = OMX_AUDIO_PCMModeLinear;

         switch(num_channels) {
         case 1:
            pcm.eChannelMapping[0] = OMX_AUDIO_ChannelCF;
            break;
         case 3:
            pcm.eChannelMapping[2] = OMX_AUDIO_ChannelCF;
            pcm.eChannelMapping[1] = OMX_AUDIO_ChannelRF;
            pcm.eChannelMapping[0] = OMX_AUDIO_ChannelLF;
            break;
         case 8:
            pcm.eChannelMapping[7] = OMX_AUDIO_ChannelRS;
         case 7:
            pcm.eChannelMapping[6] = OMX_AUDIO_ChannelLS;
         case 6:
            pcm.eChannelMapping[5] = OMX_AUDIO_ChannelRR;
         case 5:
            pcm.eChannelMapping[4] = OMX_AUDIO_ChannelLR;
         case 4:
            pcm.eChannelMapping[3] = OMX_AUDIO_ChannelLFE;
            pcm.eChannelMapping[2] = OMX_AUDIO_ChannelCF;
         case 2:
            pcm.eChannelMapping[1] = OMX_AUDIO_ChannelRF;
            pcm.eChannelMapping[0] = OMX_AUDIO_ChannelLF;
            break;
         }

         error = OMX_SetParameter(ILC_GET_HANDLE(st->audio_render), OMX_IndexParamAudioPcm, &pcm);
         assert(error == OMX_ErrorNone);

         ilclient_change_component_state(st->audio_render, OMX_StateIdle);
         if(ilclient_enable_port_buffers(st->audio_render, 100, ((void*)0), ((void*)0), ((void*)0)) < 0)
         {

            ilclient_change_component_state(st->audio_render, OMX_StateLoaded);
            ilclient_cleanup_components(st->list);

            error = OMX_Deinit();
            assert(error == OMX_ErrorNone);

            ilclient_destroy(st->client);

            sem_destroy(&st->sema);
            free(st);
            *handle = ((void*)0);
            return -1;
         }

         ilclient_change_component_state(st->audio_render, OMX_StateExecuting);
      }
   }

   return ret;
}
