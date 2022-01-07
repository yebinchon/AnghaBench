
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_LEN ;
 int BUF_MASK ;
 int SDL_Delay (int) ;
 int buf_r ;
 int buf_w ;

void sndout_sdl_wait(void)
{
 int left;

 while (1)
 {
  left = (buf_r - buf_w - 2) & BUF_MASK;
  if (left >= BUF_LEN / 2)
   break;

  SDL_Delay(4);
 }
}
