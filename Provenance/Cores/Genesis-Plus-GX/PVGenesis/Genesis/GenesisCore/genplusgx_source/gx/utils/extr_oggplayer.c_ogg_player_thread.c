
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t pcm_indx; size_t pcmout_pos; int eof; int flag; int seek_time; int mode; int fd; int vf; int volume; int ** pcmout; TYPE_2__* vi; scalar_t__ current_section; } ;
typedef TYPE_1__ private_data_ogg ;
struct TYPE_5__ {int channels; int rate; } ;


 int ASND_Pause (int ) ;
 int ASND_SetVoice (int ,int ,int ,int ,void*,int,int ,int ,int ) ;
 scalar_t__ ASND_StatusVoice (int ) ;
 scalar_t__ ASND_TestPointer (int ,int *) ;
 int LWP_InitQueue (int *) ;
 int LWP_ThreadSleep (int ) ;
 int MAX_PCMOUT ;
 long OV_HOLE ;
 size_t READ_SAMPLES ;
 scalar_t__ SND_UNUSED ;
 int VOICE_MONO_16BIT ;
 int VOICE_STEREO_16BIT ;
 int ogg_add_callback ;
 int ogg_thread_running ;
 int oggplayer_queue ;
 int ov_clear (int *) ;
 TYPE_2__* ov_info (int *,int) ;
 long ov_read (int *,void*,int ,scalar_t__*) ;
 int ov_time_seek (int *,int) ;
 int usleep (int) ;

__attribute__((used)) static void * ogg_player_thread(private_data_ogg * priv)
{
  int first_time = 1;
  long ret;


  LWP_InitQueue(&oggplayer_queue);

  priv[0].vi = ov_info(&priv[0].vf, -1);

  ASND_Pause(0);

  priv[0].pcm_indx = 0;
  priv[0].pcmout_pos = 0;
  priv[0].eof = 0;
  priv[0].flag = 0;
  priv[0].current_section = 0;

  ogg_thread_running = 1;

  while (!priv[0].eof && ogg_thread_running)
  {
    if (priv[0].flag)
      LWP_ThreadSleep(oggplayer_queue);

    if (priv[0].flag == 0)
    {
      if (ASND_TestPointer(0, priv[0].pcmout[priv[0].pcmout_pos])
          && ASND_StatusVoice(0) != SND_UNUSED)
      {
        priv[0].flag |= 64;
        continue;
      }
      if (priv[0].pcm_indx < READ_SAMPLES)
      {
        priv[0].flag = 3;

        if (priv[0].seek_time >= 0)
        {
          ov_time_seek(&priv[0].vf, priv[0].seek_time);
          priv[0].seek_time = -1;
        }

        ret
            = ov_read(
                &priv[0].vf,
                (void *) &priv[0].pcmout[priv[0].pcmout_pos][priv[0].pcm_indx],
                MAX_PCMOUT, &priv[0].current_section);
        priv[0].flag &= 192;
        if (ret == 0)
        {

          if (priv[0].mode & 1)
            ov_time_seek(&priv[0].vf, 0);
          else
            priv[0].eof = 1;
        }
        else if (ret < 0)
        {


          if (ret != OV_HOLE)
          {
            if (priv[0].mode & 1)
              ov_time_seek(&priv[0].vf, 0);
            else
              priv[0].eof = 1;
          }
        }
        else
        {


          priv[0].pcm_indx += ret >> 1;
        }
      }
      else
        priv[0].flag = 1;
    }

    if (priv[0].flag == 1)
    {
      if (ASND_StatusVoice(0) == SND_UNUSED || first_time)
      {
        first_time = 0;
        if (priv[0].vi->channels == 2)
        {
          ASND_SetVoice(0, VOICE_STEREO_16BIT, priv[0].vi->rate, 0,
              (void *) priv[0].pcmout[priv[0].pcmout_pos],
              priv[0].pcm_indx << 1, priv[0].volume,
              priv[0].volume, ogg_add_callback);
          priv[0].pcmout_pos ^= 1;
          priv[0].pcm_indx = 0;
          priv[0].flag = 0;
        }
        else
        {
          ASND_SetVoice(0, VOICE_MONO_16BIT, priv[0].vi->rate, 0,
              (void *) priv[0].pcmout[priv[0].pcmout_pos],
              priv[0].pcm_indx << 1, priv[0].volume,
              priv[0].volume, ogg_add_callback);
          priv[0].pcmout_pos ^= 1;
          priv[0].pcm_indx = 0;
          priv[0].flag = 0;
        }
      }
    }
    usleep(10);
  }
  ov_clear(&priv[0].vf);
  priv[0].fd = -1;
  priv[0].pcm_indx = 0;

  return 0;
}
