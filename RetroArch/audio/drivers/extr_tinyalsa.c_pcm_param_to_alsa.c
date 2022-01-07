
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pcm_param { ____Placeholder_pcm_param } pcm_param ;
 int SNDRV_PCM_HW_PARAM_ACCESS ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_TIME ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_FRAME_BITS ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int SNDRV_PCM_HW_PARAM_SUBFORMAT ;
 int SNDRV_PCM_HW_PARAM_TICK_TIME ;

__attribute__((used)) static int pcm_param_to_alsa(enum pcm_param param)
{
   switch (param)
   {
      case 142:
         return SNDRV_PCM_HW_PARAM_ACCESS;
      case 137:
         return SNDRV_PCM_HW_PARAM_FORMAT;
      case 129:
         return SNDRV_PCM_HW_PARAM_SUBFORMAT;
      case 130:
         return SNDRV_PCM_HW_PARAM_SAMPLE_BITS;
      case 136:
         return SNDRV_PCM_HW_PARAM_FRAME_BITS;
      case 138:
         return SNDRV_PCM_HW_PARAM_CHANNELS;
      case 131:
         return SNDRV_PCM_HW_PARAM_RATE;
      case 132:
         return SNDRV_PCM_HW_PARAM_PERIOD_TIME;
      case 133:
         return SNDRV_PCM_HW_PARAM_PERIOD_SIZE;
      case 134:
         return SNDRV_PCM_HW_PARAM_PERIOD_BYTES;
      case 135:
         return SNDRV_PCM_HW_PARAM_PERIODS;
      case 139:
         return SNDRV_PCM_HW_PARAM_BUFFER_TIME;
      case 140:
         return SNDRV_PCM_HW_PARAM_BUFFER_SIZE;
      case 141:
         return SNDRV_PCM_HW_PARAM_BUFFER_BYTES;
      case 128:
         return SNDRV_PCM_HW_PARAM_TICK_TIME;

      default:
         break;
   }

   return -1;
}
