
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_event {scalar_t__ type; int value; int code; } ;
struct TYPE_2__ {int abs_lzone; scalar_t__ abs_min_x; int abs_max_x; int abs_lastx; scalar_t__ abs_min_y; int abs_max_y; int abs_lasty; scalar_t__ abs_to_digital; int fd; } ;
typedef TYPE_1__ in_evdev_t ;
typedef int ev ;


 int ABS_X ;
 int ABS_Y ;
 scalar_t__ EAGAIN ;
 scalar_t__ EV_ABS ;
 scalar_t__ EV_KEY ;
 int KEY_DOWN ;
 int KEY_LEFT ;
 int KEY_RIGHT ;
 int KEY_UP ;
 scalar_t__ errno ;
 int perror (char*) ;
 int read (int ,struct input_event*,int) ;

__attribute__((used)) static int in_evdev_update_keycode(void *data, int *is_down)
{
 int ret_kc = -1, ret_down = 0;
 in_evdev_t *dev = data;
 struct input_event ev;
 int rd;



 rd = read(dev->fd, &ev, sizeof(ev));
 if (rd < (int) sizeof(ev)) {
  if (errno != EAGAIN) {
   perror("in_evdev: error reading");

   ret_kc = -2;
  }
  goto out;
 }

 if (ev.type == EV_KEY) {
  if (ev.value < 0 || ev.value > 1)
   goto out;
  ret_kc = ev.code;
  ret_down = ev.value;
  goto out;
 }
 else if (ev.type == EV_ABS && dev->abs_to_digital)
 {
  int lzone = dev->abs_lzone, down = 0, *last;


  if (lzone != 0 && ev.code == ABS_X) {
   if (ev.value < dev->abs_min_x + lzone)
    down = KEY_LEFT;
   else if (ev.value > dev->abs_max_x - lzone)
    down = KEY_RIGHT;
   last = &dev->abs_lastx;
  }
  else if (lzone != 0 && ev.code == ABS_Y) {
   if (ev.value < dev->abs_min_y + lzone)
    down = KEY_UP;
   else if (ev.value > dev->abs_max_y - lzone)
    down = KEY_DOWN;
   last = &dev->abs_lasty;
  }
  else
   goto out;

  if (down == *last)
   goto out;

  if (down == 0 || *last != 0) {

   ret_kc = *last;
   ret_down = 0;
   *last = 0;
   goto out;
  }
  ret_kc = *last = down;
  ret_down = 1;
  goto out;
 }

out:
 if (is_down != ((void*)0))
  *is_down = ret_down;

 return ret_kc;
}
