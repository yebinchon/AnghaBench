
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int swap; int sndrate; } ;
struct TYPE_3__ {int buffer_size; int * buffer; } ;


 int FRAMES_PER_SECOND ;
 TYPE_2__ option ;
 int osd_play_streamed_sample_16 (int,int ,int,int ,int ,int) ;
 TYPE_1__ snd ;

void dos_update_audio(void)
{
  osd_play_streamed_sample_16(option.swap ^ 0, snd.buffer[0], snd.buffer_size * 2, option.sndrate, FRAMES_PER_SECOND, -100);
  osd_play_streamed_sample_16(option.swap ^ 1, snd.buffer[1], snd.buffer_size * 2, option.sndrate, FRAMES_PER_SECOND, 100);
}
