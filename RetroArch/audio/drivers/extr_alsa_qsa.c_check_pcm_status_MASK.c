#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  status ;
struct TYPE_5__ {int channel; scalar_t__ status; } ;
typedef  TYPE_1__ snd_pcm_channel_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  pcm; } ;
typedef  TYPE_2__ alsa_qsa_t ;

/* Variables and functions */
 int EBADF ; 
 int EOK ; 
 int EPROTO ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ SND_PCM_STATUS_CHANGE ; 
 scalar_t__ SND_PCM_STATUS_OVERRUN ; 
 scalar_t__ SND_PCM_STATUS_UNDERRUN ; 
 scalar_t__ SND_PCM_STATUS_UNSECURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void *data, int channel_type)
{
   snd_pcm_channel_status_t status;
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;
   int ret          = EOK;

   FUNC2(&status, 0, sizeof (status));
   status.channel = channel_type;

   if ((ret = FUNC4(alsa->pcm, &status)) == 0)
   {
      if (status.status == SND_PCM_STATUS_UNSECURE)
      {
         FUNC0("check_pcm_status got SND_PCM_STATUS_UNSECURE, aborting playback\n");
         ret = -EPROTO;
      }
      else if (status.status == SND_PCM_STATUS_UNDERRUN)
      {
         FUNC1("check_pcm_status: SNDP_CM_STATUS_UNDERRUN.\n");
         if ((ret = FUNC3(alsa->pcm, channel_type)) < 0)
         {
            FUNC0("Invalid state detected for underrun on snd_pcm_channel_prepare: %s\n",
                  FUNC5(ret));
            ret = -EPROTO;
         }
      }
      else if (status.status == SND_PCM_STATUS_OVERRUN)
      {
         FUNC1("check_pcm_status: SNDP_CM_STATUS_OVERRUN.\n");
         if ((ret = FUNC3(alsa->pcm, channel_type)) < 0)
         {
            FUNC0("Invalid state detected for overrun on snd_pcm_channel_prepare: %s\n",
                  FUNC5(ret));
            ret = -EPROTO;
         }
      }
      else if (status.status == SND_PCM_STATUS_CHANGE)
      {
         FUNC1("check_pcm_status: SNDP_CM_STATUS_CHANGE.\n");
         if ((ret = FUNC3(alsa->pcm, channel_type)) < 0)
         {
            FUNC0("Invalid state detected for change on snd_pcm_channel_prepare: %s\n",
                  FUNC5(ret));
            ret = -EPROTO;
         }
      }
   }
   else
   {
      FUNC0("check_pcm_status failed: %s\n", FUNC5(ret));
      if (ret == -ESRCH)
         ret = -EBADF;
   }

   return ret;
}