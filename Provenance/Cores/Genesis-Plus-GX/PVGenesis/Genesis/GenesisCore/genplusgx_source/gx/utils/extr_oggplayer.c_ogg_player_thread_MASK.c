#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t pcm_indx; size_t pcmout_pos; int eof; int flag; int seek_time; int mode; int fd; int /*<<< orphan*/  vf; int /*<<< orphan*/  volume; int /*<<< orphan*/ ** pcmout; TYPE_2__* vi; scalar_t__ current_section; } ;
typedef  TYPE_1__ private_data_ogg ;
struct TYPE_5__ {int channels; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PCMOUT ; 
 long OV_HOLE ; 
 size_t READ_SAMPLES ; 
 scalar_t__ SND_UNUSED ; 
 int /*<<< orphan*/  VOICE_MONO_16BIT ; 
 int /*<<< orphan*/  VOICE_STEREO_16BIT ; 
 int /*<<< orphan*/  ogg_add_callback ; 
 int ogg_thread_running ; 
 int /*<<< orphan*/  oggplayer_queue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 long FUNC8 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void * FUNC11(private_data_ogg * priv)
{
  int first_time = 1;
  long ret;

  /* init */
  FUNC4(&oggplayer_queue);

  priv[0].vi = FUNC7(&priv[0].vf, -1);

  FUNC0(0);

  priv[0].pcm_indx = 0;
  priv[0].pcmout_pos = 0;
  priv[0].eof = 0;
  priv[0].flag = 0;
  priv[0].current_section = 0;

  ogg_thread_running = 1;

  while (!priv[0].eof && ogg_thread_running)
  {
    if (priv[0].flag)
      FUNC5(oggplayer_queue); /* wait only when i have samples to send */

    if (priv[0].flag == 0) /* wait to all samples are sended */
    {
      if (FUNC3(0, priv[0].pcmout[priv[0].pcmout_pos])
          && FUNC2(0) != SND_UNUSED)
      {
        priv[0].flag |= 64;
        continue;
      }
      if (priv[0].pcm_indx < READ_SAMPLES)
      {
        priv[0].flag = 3;

        if (priv[0].seek_time >= 0)
        {
          FUNC9(&priv[0].vf, priv[0].seek_time);
          priv[0].seek_time = -1;
        }

        ret
            = FUNC8(
                &priv[0].vf,
                (void *) &priv[0].pcmout[priv[0].pcmout_pos][priv[0].pcm_indx],
                MAX_PCMOUT,/*0,2,1,*/&priv[0].current_section);
        priv[0].flag &= 192;
        if (ret == 0)
        {
          /* EOF */
          if (priv[0].mode & 1)
            FUNC9(&priv[0].vf, 0); /* repeat */
          else
            priv[0].eof = 1; /* stops */
        }
        else if (ret < 0)
        {
          /* error in the stream.  Not a problem, just reporting it in
           case we (the app) cares.  In this case, we don't. */
          if (ret != OV_HOLE)
          {
            if (priv[0].mode & 1)
              FUNC9(&priv[0].vf, 0); /* repeat */
            else
              priv[0].eof = 1; /* stops */
          }
        }
        else
        {
          /* we don't bother dealing with sample rate changes, etc, but
           you'll have to */
          priv[0].pcm_indx += ret >> 1; /* get 16 bits samples */
        }
      }
      else
        priv[0].flag = 1;
    }

    if (priv[0].flag == 1)
    {
      if (FUNC2(0) == SND_UNUSED || first_time)
      {
        first_time = 0;
        if (priv[0].vi->channels == 2)
        {
          FUNC1(0, VOICE_STEREO_16BIT, priv[0].vi->rate, 0,
              (void *) priv[0].pcmout[priv[0].pcmout_pos],
              priv[0].pcm_indx << 1, priv[0].volume,
              priv[0].volume, ogg_add_callback);
          priv[0].pcmout_pos ^= 1;
          priv[0].pcm_indx = 0;
          priv[0].flag = 0;
        }
        else
        {
          FUNC1(0, VOICE_MONO_16BIT, priv[0].vi->rate, 0,
              (void *) priv[0].pcmout[priv[0].pcmout_pos],
              priv[0].pcm_indx << 1, priv[0].volume,
              priv[0].volume, ogg_add_callback);
          priv[0].pcmout_pos ^= 1;
          priv[0].pcm_indx = 0;
          priv[0].flag = 0;
        }
      }
    }
    FUNC10(10);
  }
  FUNC6(&priv[0].vf);
  priv[0].fd = -1;
  priv[0].pcm_indx = 0;

  return 0;
}