#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; int mode; int volume; int seek_time; int /*<<< orphan*/  vf; scalar_t__ flag; scalar_t__ eof; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STACKSIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  callbacks ; 
 int /*<<< orphan*/  h_oggplayer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ ogg_player_thread ; 
 scalar_t__ ogg_thread_running ; 
 int /*<<< orphan*/  oggplayer_stack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ private_ogg ; 

int FUNC6(char * buf, int buflen, int time_pos, int mode)
{
  FUNC1();

  private_ogg.fd = FUNC3(buf, buflen);
  
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

  if (FUNC5((void *) &private_ogg.fd, &private_ogg.vf, NULL, 0, callbacks) < 0)
  {
    FUNC2(private_ogg.fd); /* mem_close() can too close files from devices */
    private_ogg.fd = -1;
    ogg_thread_running = 0;
    return -1;
  }

  if (FUNC0(&h_oggplayer, (void *) ogg_player_thread,
      &private_ogg, oggplayer_stack, STACKSIZE, 80) == -1)
  {
    ogg_thread_running = 0;
    FUNC4(&private_ogg.vf);
    private_ogg.fd = -1;
    return -1;
  }
  return 0;
}