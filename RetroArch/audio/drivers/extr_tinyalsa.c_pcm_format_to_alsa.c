
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pcm_format { ____Placeholder_pcm_format } pcm_format ;
 unsigned int SNDRV_PCM_FORMAT_S16_BE ;
 unsigned int SNDRV_PCM_FORMAT_S16_LE ;
 unsigned int SNDRV_PCM_FORMAT_S24_3BE ;
 unsigned int SNDRV_PCM_FORMAT_S24_3LE ;
 unsigned int SNDRV_PCM_FORMAT_S24_BE ;
 unsigned int SNDRV_PCM_FORMAT_S24_LE ;
 unsigned int SNDRV_PCM_FORMAT_S32_BE ;
 unsigned int SNDRV_PCM_FORMAT_S32_LE ;
 unsigned int SNDRV_PCM_FORMAT_S8 ;

__attribute__((used)) static unsigned int pcm_format_to_alsa(enum pcm_format format)
{
   switch (format)
   {
      case 128:
         return SNDRV_PCM_FORMAT_S8;

      default:
      case 135:
         return SNDRV_PCM_FORMAT_S16_LE;
      case 136:
         return SNDRV_PCM_FORMAT_S16_BE;

      case 131:
         return SNDRV_PCM_FORMAT_S24_LE;
      case 132:
         return SNDRV_PCM_FORMAT_S24_BE;

      case 133:
         return SNDRV_PCM_FORMAT_S24_3LE;
      case 134:
         return SNDRV_PCM_FORMAT_S24_3BE;

      case 129:
         return SNDRV_PCM_FORMAT_S32_LE;
      case 130:
         return SNDRV_PCM_FORMAT_S32_BE;
   }
}
