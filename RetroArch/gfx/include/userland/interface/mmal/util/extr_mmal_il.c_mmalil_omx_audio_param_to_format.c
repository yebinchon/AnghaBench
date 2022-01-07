
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_26__ {int eAMRBandMode; int nBitRate; int nChannels; } ;
struct TYPE_25__ {int nSampleRate; int nBitRate; int nChannels; } ;
struct TYPE_24__ {int nSamplingRate; int eFormat; int nBitRate; int nBlockAlign; int nChannels; } ;
struct TYPE_23__ {int nSampleRate; int nBitRate; int nChannels; } ;
struct TYPE_22__ {int nSampleRate; int eAACStreamFormat; int nBitRate; int nChannels; } ;
struct TYPE_21__ {int nSamplingRate; int ePCMMode; int eNumData; int eEndian; int bInterleaved; int nBitPerSample; int nChannels; } ;
struct TYPE_17__ {int sample_rate; int block_align; int channels; int bits_per_sample; } ;
struct TYPE_20__ {TYPE_12__ audio; } ;
struct TYPE_19__ {int nSampleRate; int nDtsFrameSizeBytes; int nChannels; } ;
struct TYPE_18__ {int nSampleRate; int eBitStreamId; int nChannels; } ;
struct TYPE_16__ {void* encoding; int bitrate; scalar_t__ encoding_variant; TYPE_3__* es; } ;
struct TYPE_15__ {TYPE_2__ dts; TYPE_1__ ddp; TYPE_9__ amr; TYPE_8__ vorbis; TYPE_7__ wma; TYPE_6__ mp3; TYPE_5__ aac; TYPE_4__ pcm; } ;
typedef TYPE_10__ OMX_FORMAT_PARAM_TYPE ;
typedef int OMX_AUDIO_CODINGTYPE ;
typedef void* MMAL_FOURCC_T ;
typedef TYPE_11__ MMAL_ES_FORMAT_T ;
typedef TYPE_12__ MMAL_AUDIO_FORMAT_T ;


 void* MMAL_ENCODING_ALAW ;
 void* MMAL_ENCODING_AMRNB ;
 void* MMAL_ENCODING_AMRWB ;
 void* MMAL_ENCODING_EAC3 ;
 void* MMAL_ENCODING_MP4A ;
 void* MMAL_ENCODING_MPGA ;
 void* MMAL_ENCODING_MULAW ;
 void* MMAL_ENCODING_PCM_SIGNED_BE ;
 void* MMAL_ENCODING_PCM_SIGNED_LE ;
 void* MMAL_ENCODING_PCM_UNSIGNED_BE ;
 void* MMAL_ENCODING_PCM_UNSIGNED_LE ;
 scalar_t__ MMAL_ENCODING_VARIANT_MP4A_ADTS ;
 scalar_t__ MMAL_ENCODING_VARIANT_MP4A_DEFAULT ;
 void* MMAL_ENCODING_WMA1 ;
 void* MMAL_ENCODING_WMA2 ;




 int OMX_AUDIO_AMRBandModeNB0 ;
 int OMX_AUDIO_AMRBandModeNB7 ;
 int OMX_AUDIO_AMRBandModeWB0 ;
 int OMX_AUDIO_AMRBandModeWB8 ;
 int OMX_AUDIO_DDPBitStreamIdAC3 ;
 int OMX_AUDIO_PCMModeALaw ;
 int OMX_AUDIO_PCMModeLinear ;
 int OMX_AUDIO_PCMModeMULaw ;



 int OMX_EndianBig ;
 int OMX_EndianLittle ;
 int OMX_NumericalDataSigned ;
 int OMX_NumericalDataUnsigned ;
 void* mmalil_omx_audio_coding_to_encoding (int) ;
 int vcos_assert (int ) ;

MMAL_FOURCC_T mmalil_omx_audio_param_to_format(MMAL_ES_FORMAT_T *format,
   OMX_AUDIO_CODINGTYPE coding, OMX_FORMAT_PARAM_TYPE *param)
{
   MMAL_AUDIO_FORMAT_T *audio = &format->es->audio;
   format->encoding = mmalil_omx_audio_coding_to_encoding(coding);
   format->encoding_variant = 0;

   switch(coding)
   {
   case 143:
      audio->channels = param->pcm.nChannels;
      audio->sample_rate = param->pcm.nSamplingRate;
      audio->bits_per_sample = param->pcm.nBitPerSample;
      if(param->pcm.ePCMMode == OMX_AUDIO_PCMModeLinear && param->pcm.bInterleaved)
      {
         if(param->pcm.eEndian == OMX_EndianBig &&
            param->pcm.eNumData == OMX_NumericalDataSigned)
            format->encoding = MMAL_ENCODING_PCM_SIGNED_BE;
         else if(param->pcm.eEndian == OMX_EndianLittle &&
            param->pcm.eNumData == OMX_NumericalDataSigned)
            format->encoding = MMAL_ENCODING_PCM_SIGNED_LE;
         if(param->pcm.eEndian == OMX_EndianBig &&
            param->pcm.eNumData == OMX_NumericalDataUnsigned)
            format->encoding = MMAL_ENCODING_PCM_UNSIGNED_BE;
         if(param->pcm.eEndian == OMX_EndianLittle &&
            param->pcm.eNumData == OMX_NumericalDataUnsigned)
            format->encoding = MMAL_ENCODING_PCM_UNSIGNED_LE;
      }
      else if(param->pcm.ePCMMode == OMX_AUDIO_PCMModeALaw)
         format->encoding = MMAL_ENCODING_ALAW;
      else if(param->pcm.ePCMMode == OMX_AUDIO_PCMModeMULaw)
         format->encoding = MMAL_ENCODING_MULAW;
      break;
   case 158:
      audio->channels = param->aac.nChannels;
      audio->sample_rate = param->aac.nSampleRate;
      format->bitrate = param->aac.nBitRate;
      switch(param->aac.eAACStreamFormat)
      {
      case 162:
      case 161:
         format->encoding = MMAL_ENCODING_MP4A;
         format->encoding_variant = MMAL_ENCODING_VARIANT_MP4A_ADTS;
         break;
      case 160:
      case 159:
         format->encoding = MMAL_ENCODING_MP4A;
         format->encoding_variant = MMAL_ENCODING_VARIANT_MP4A_DEFAULT;
         break;
      default: break;
      }
      break;
   case 144:
      format->encoding = MMAL_ENCODING_MPGA;
      audio->channels = param->mp3.nChannels;
      audio->sample_rate = param->mp3.nSampleRate;
      format->bitrate = param->mp3.nBitRate;
      break;
   case 131:
      audio->channels = param->wma.nChannels;
      audio->sample_rate = param->wma.nSamplingRate;
      audio->block_align = param->wma.nBlockAlign;
      format->bitrate = param->wma.nBitRate;
      switch(param->wma.eFormat)
      {
      case 130:
         format->encoding = MMAL_ENCODING_WMA1;
         break;
      case 129:
      case 128:
         format->encoding = MMAL_ENCODING_WMA2;
         break;
      default: break;
      }
      break;
   case 132:
      audio->channels = param->vorbis.nChannels;
      audio->sample_rate = param->vorbis.nSampleRate;
      format->bitrate = param->vorbis.nBitRate;
      break;
   case 156:
      audio->channels = param->amr.nChannels;
      audio->sample_rate = 8000;
      format->bitrate = param->amr.nBitRate;
      if(param->amr.eAMRBandMode >= OMX_AUDIO_AMRBandModeNB0 &&
         param->amr.eAMRBandMode <= OMX_AUDIO_AMRBandModeNB7)
         format->encoding = MMAL_ENCODING_AMRNB;
      if(param->amr.eAMRBandMode >= OMX_AUDIO_AMRBandModeWB0 &&
         param->amr.eAMRBandMode <= OMX_AUDIO_AMRBandModeWB8)
         format->encoding = MMAL_ENCODING_AMRWB;
      break;
   case 155:
      audio->channels = param->ddp.nChannels;
      audio->sample_rate = param->ddp.nSampleRate;
      if(param->ddp.eBitStreamId > OMX_AUDIO_DDPBitStreamIdAC3)
         format->encoding = MMAL_ENCODING_EAC3;
      break;
   case 154:
      audio->channels = param->dts.nChannels;
      audio->sample_rate = param->dts.nSampleRate;
      audio->block_align = param->dts.nDtsFrameSizeBytes;
      break;

   case 157:
   case 147:
   case 148:
   case 146:
   case 141:
   case 142:
   case 140:
   case 133:
   case 134:
   case 138:
   case 139:
   case 153:
   case 135:
   case 152:
   case 151:
   case 150:
   case 149:
   case 136:
   case 137:
   case 145:
   default:
      vcos_assert(0);
      break;
   }

   return format->encoding;
}
