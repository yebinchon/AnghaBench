
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int status ;
struct TYPE_5__ {int channel; scalar_t__ status; } ;
typedef TYPE_1__ snd_pcm_channel_status_t ;
struct TYPE_6__ {int pcm; } ;
typedef TYPE_2__ alsa_qsa_t ;


 int EBADF ;
 int EOK ;
 int EPROTO ;
 int ESRCH ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*) ;
 scalar_t__ SND_PCM_STATUS_CHANGE ;
 scalar_t__ SND_PCM_STATUS_OVERRUN ;
 scalar_t__ SND_PCM_STATUS_UNDERRUN ;
 scalar_t__ SND_PCM_STATUS_UNSECURE ;
 int memset (TYPE_1__*,int ,int) ;
 int snd_pcm_channel_prepare (int ,int) ;
 int snd_pcm_channel_status (int ,TYPE_1__*) ;
 int snd_strerror (int) ;

__attribute__((used)) static int check_pcm_status(void *data, int channel_type)
{
   snd_pcm_channel_status_t status;
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;
   int ret = EOK;

   memset(&status, 0, sizeof (status));
   status.channel = channel_type;

   if ((ret = snd_pcm_channel_status(alsa->pcm, &status)) == 0)
   {
      if (status.status == SND_PCM_STATUS_UNSECURE)
      {
         RARCH_ERR("check_pcm_status got SND_PCM_STATUS_UNSECURE, aborting playback\n");
         ret = -EPROTO;
      }
      else if (status.status == SND_PCM_STATUS_UNDERRUN)
      {
         RARCH_LOG("check_pcm_status: SNDP_CM_STATUS_UNDERRUN.\n");
         if ((ret = snd_pcm_channel_prepare(alsa->pcm, channel_type)) < 0)
         {
            RARCH_ERR("Invalid state detected for underrun on snd_pcm_channel_prepare: %s\n",
                  snd_strerror(ret));
            ret = -EPROTO;
         }
      }
      else if (status.status == SND_PCM_STATUS_OVERRUN)
      {
         RARCH_LOG("check_pcm_status: SNDP_CM_STATUS_OVERRUN.\n");
         if ((ret = snd_pcm_channel_prepare(alsa->pcm, channel_type)) < 0)
         {
            RARCH_ERR("Invalid state detected for overrun on snd_pcm_channel_prepare: %s\n",
                  snd_strerror(ret));
            ret = -EPROTO;
         }
      }
      else if (status.status == SND_PCM_STATUS_CHANGE)
      {
         RARCH_LOG("check_pcm_status: SNDP_CM_STATUS_CHANGE.\n");
         if ((ret = snd_pcm_channel_prepare(alsa->pcm, channel_type)) < 0)
         {
            RARCH_ERR("Invalid state detected for change on snd_pcm_channel_prepare: %s\n",
                  snd_strerror(ret));
            ret = -EPROTO;
         }
      }
   }
   else
   {
      RARCH_ERR("check_pcm_status failed: %s\n", snd_strerror(ret));
      if (ret == -ESRCH)
         ret = -EBADF;
   }

   return ret;
}
