
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; int x; int h; int y; scalar_t__ changed; } ;
struct TYPE_6__ {scalar_t__ remap; TYPE_1__ viewport; } ;
struct TYPE_5__ {scalar_t__ scanlines; scalar_t__ vsync; } ;


 int SCREEN_H ;
 int SCREEN_W ;
 TYPE_3__ bitmap ;
 int blit (int ,int ,int,int,int,int,int,int) ;
 int clear (int ) ;
 int clear_to_color (int ,int) ;
 int dos_update_palette () ;
 int frame_rate ;
 int gen_bmp ;
 scalar_t__ interlaced ;
 int msg_print (int,int,char*,int ) ;
 TYPE_2__ option ;
 int screen ;
 int stretch_blit (int ,int ,int ,int ,int,int,int,int,int,int) ;
 int vsync () ;

void dos_update_video(void)
{
  int width = (bitmap.viewport.w + 2 * bitmap.viewport.x);
  int height = (bitmap.viewport.h + 2 * bitmap.viewport.y) << (interlaced ? 1:0);
  int center_x = (SCREEN_W - width) / 2;
  int center_y = (SCREEN_H / (option.scanlines ? 4 : 2)) - (height / 2);


  if(option.vsync) vsync();

  if(bitmap.viewport.changed)
  {
    bitmap.viewport.changed = 0;
    if(bitmap.remap)
    {
      clear(screen);
    }
    else
    {
      clear_to_color(screen, 0xFF);
    }
  }
  msg_print(2, 2, "%d", frame_rate);

  if(option.scanlines)
  {
    int y;
    for(y = 0; y < height; y += 1)
    {
      blit(gen_bmp, screen, 0x0, y, center_x, (center_y + y) << 1, width, 1);
    }
  }
  else
  {
    stretch_blit(gen_bmp, screen, 0, 0, width, height, (SCREEN_W-352)/2, (SCREEN_H-240)/2, 352,240 << (interlaced ? 1:0));
  }
}
