
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; int x; int y; TYPE_2__* texture; } ;
typedef TYPE_1__ gui_image ;
struct TYPE_7__ {char* filename; scalar_t__ flags; } ;
struct TYPE_6__ {int width; int height; } ;
typedef int GXColor ;


 scalar_t__ BG_COLOR_1 ;
 scalar_t__ BG_COLOR_2 ;
 int Browser_dir_png ;
 scalar_t__ FONT_write (char*,int,int,int,int,int ) ;
 int MAXPATHLEN ;
 int Overlay_bar_png ;
 int SCROLL_SPEED ;
 scalar_t__ WHITE ;
 TYPE_4__* filelist ;
 int gxDrawRectangle (int,int,int,int,int,int ) ;
 int gxDrawTexture (TYPE_2__*,int,int,int,int,int) ;
 int gxTextureClose (TYPE_2__**) ;
 void* gxTextureOpenPNG (int ,int ) ;
 int maxfiles ;
 int offset ;
 int selection ;
 int sprintf (char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int string_offset ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void selector_cb(void)
{
  int i;
  char text[MAXPATHLEN];
  int yoffset = 108;


  gui_image dir_icon;
  dir_icon.texture = gxTextureOpenPNG(Browser_dir_png,0);
  dir_icon.w = dir_icon.texture->width;
  dir_icon.h = dir_icon.texture->height;
  dir_icon.x = 26;
  dir_icon.y = (26 - dir_icon.h)/2;


  gui_image bar_over;
  bar_over.texture = gxTextureOpenPNG(Overlay_bar_png,0);
  bar_over.w = bar_over.texture->width;
  bar_over.h = bar_over.texture->height;
  bar_over.x = 16;
  bar_over.y = (26 - bar_over.h)/2;


  gxDrawRectangle(15, 108, 358, 26, 127, (GXColor)BG_COLOR_1);
  gxDrawRectangle(15, 134, 358, 26, 127, (GXColor)BG_COLOR_2);
  gxDrawRectangle(15, 160, 358, 26, 127, (GXColor)BG_COLOR_1);
  gxDrawRectangle(15, 186, 358, 26, 127, (GXColor)BG_COLOR_2);
  gxDrawRectangle(15, 212, 358, 26, 127, (GXColor)BG_COLOR_1);
  gxDrawRectangle(15, 238, 358, 26, 127, (GXColor)BG_COLOR_2);
  gxDrawRectangle(15, 264, 358, 26, 127, (GXColor)BG_COLOR_1);
  gxDrawRectangle(15, 290, 358, 26, 127, (GXColor)BG_COLOR_2);
  gxDrawRectangle(15, 316, 358, 26, 127, (GXColor)BG_COLOR_1);
  gxDrawRectangle(15, 342, 358, 26, 127, (GXColor)BG_COLOR_2);


  for (i = offset; (i < (offset + 10)) && (i < maxfiles); i++)
  {
    if (i == selection)
    {

      gxDrawTexture(bar_over.texture,bar_over.x,yoffset+bar_over.y,bar_over.w,bar_over.h,255);


      if ((string_offset/SCROLL_SPEED) >= strlen(filelist[i].filename))
      {
        string_offset = 0;
      }

      if (string_offset)
      {
        sprintf(text,"%s ",filelist[i].filename+string_offset/SCROLL_SPEED);
        strncat(text, filelist[i].filename, string_offset/SCROLL_SPEED);
      }
      else
      {
        strcpy(text, filelist[i].filename);
      }


      if (filelist[i].flags)
      {

        gxDrawTexture(dir_icon.texture,dir_icon.x,yoffset+dir_icon.y,dir_icon.w,dir_icon.h,255);
        if (FONT_write(text,18,dir_icon.x+dir_icon.w+6,yoffset+22,bar_over.w-dir_icon.w-26,(GXColor)WHITE))
        {

          string_offset ++;
        }
      }
      else
      {
        if (FONT_write(text,18,dir_icon.x,yoffset+22,bar_over.w-20,(GXColor)WHITE))
        {

          string_offset ++;
        }
      }
    }
    else
    {
      if (filelist[i].flags)
      {

        gxDrawTexture(dir_icon.texture,dir_icon.x,yoffset+dir_icon.y,dir_icon.w,dir_icon.h,255);
        FONT_write(filelist[i].filename,18,dir_icon.x+dir_icon.w+6,yoffset+22,bar_over.w-dir_icon.w-26,(GXColor)WHITE);
      }
      else
      {
        FONT_write(filelist[i].filename,18,dir_icon.x,yoffset+22,bar_over.w-20,(GXColor)WHITE);
      }
    }

    yoffset += 26;
  }

  gxTextureClose(&bar_over.texture);
  gxTextureClose(&dir_icon.texture);
}
