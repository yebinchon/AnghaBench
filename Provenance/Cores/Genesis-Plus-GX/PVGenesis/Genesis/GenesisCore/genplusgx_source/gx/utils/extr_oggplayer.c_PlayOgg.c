
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int mode; int volume; int seek_time; int vf; scalar_t__ flag; scalar_t__ eof; } ;


 int LWP_CreateThread (int *,void*,TYPE_1__*,int ,int ,int) ;
 int STACKSIZE ;
 int StopOgg () ;
 int callbacks ;
 int h_oggplayer ;
 int mem_close (int) ;
 int mem_open (char*,int) ;
 scalar_t__ ogg_player_thread ;
 scalar_t__ ogg_thread_running ;
 int oggplayer_stack ;
 int ov_clear (int *) ;
 scalar_t__ ov_open_callbacks (void*,int *,int *,int ,int ) ;
 TYPE_1__ private_ogg ;

int PlayOgg(char * buf, int buflen, int time_pos, int mode)
{
  StopOgg();

  private_ogg.fd = mem_open(buf, buflen);

  if (private_ogg.fd < 0)
  {
    private_ogg.fd = -1;
    return -1;
  }

  private_ogg.mode = mode;
  private_ogg.eof = 0;
  private_ogg.volume = 127;
  private_ogg.flag = 0;
  private_ogg.seek_time = -1;

  if (time_pos > 0)
    private_ogg.seek_time = time_pos;

  if (ov_open_callbacks((void *) &private_ogg.fd, &private_ogg.vf, ((void*)0), 0, callbacks) < 0)
  {
    mem_close(private_ogg.fd);
    private_ogg.fd = -1;
    ogg_thread_running = 0;
    return -1;
  }

  if (LWP_CreateThread(&h_oggplayer, (void *) ogg_player_thread,
      &private_ogg, oggplayer_stack, STACKSIZE, 80) == -1)
  {
    ogg_thread_running = 0;
    ov_clear(&private_ogg.vf);
    private_ogg.fd = -1;
    return -1;
  }
  return 0;
}
