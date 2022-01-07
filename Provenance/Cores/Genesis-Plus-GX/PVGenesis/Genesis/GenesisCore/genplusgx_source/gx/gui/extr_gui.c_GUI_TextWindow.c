
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_16__ {int width; int height; } ;
typedef TYPE_3__ gx_texture ;
struct TYPE_17__ {TYPE_1__** helpers; } ;
typedef TYPE_4__ gui_menu ;
struct TYPE_15__ {int x; int y; int angle; scalar_t__ valid; } ;
struct TYPE_18__ {scalar_t__ keys; TYPE_2__ ir; } ;
struct TYPE_14__ {int* data; } ;
typedef int GXColor ;


 int FONT_writeCenter (char*,int,int,int,int,int ) ;
 int Frame_s1_png ;
 int Frame_s1_title_png ;
 int GUI_DeleteMenu (TYPE_4__*) ;
 int GUI_DrawMenu (TYPE_4__*) ;
 int GUI_FadeOut () ;
 int SYS_POWEROFF ;
 int SYS_ResetSystem (int ,int ,int ) ;
 scalar_t__ Shutdown ;
 scalar_t__ WHITE ;
 int gxDrawTexture (TYPE_3__*,int,int,int,int,int) ;
 int gxDrawTextureRotate (TYPE_3__*,int,int,int,int,int ,int) ;
 int gxSetScreen () ;
 int gxTextureClose (TYPE_3__**) ;
 TYPE_3__* gxTextureOpenPNG (int ,int ) ;
 TYPE_6__ m_input ;
 int shutdown () ;
 TYPE_3__* w_pointer ;

void GUI_TextWindow(gui_menu *parent, char *title, char items[][64], u8 nb_items, u8 fontsize)
{
  int i, quit = 0;






  gx_texture *window = gxTextureOpenPNG(Frame_s1_png,0);
  gx_texture *top = gxTextureOpenPNG(Frame_s1_title_png,0);


  int xwindow = (640 - window->width) /2;
  int ywindow = (480 - window->height)/2;


  int ypos = ywindow + top->height + (window->height - top->height - fontsize*nb_items) / 2 + fontsize/2;


  const u8 *data = ((void*)0);
  if (parent->helpers[1])
  {
    data = parent->helpers[1]->data;
    parent->helpers[1]->data = ((void*)0);
  }


  int yoffset = ywindow + window->height;
  while (yoffset > 0)
  {

    GUI_DrawMenu(parent);


    gxDrawTexture(window,xwindow,ywindow-yoffset,window->width,window->height,230);
    gxDrawTexture(top,xwindow,ywindow-yoffset,top->width,top->height,255);


    FONT_writeCenter(title,20,xwindow,xwindow+window->width,ywindow+(top->height-20)/2+20-yoffset,(GXColor)WHITE);


    for (i=0; i<nb_items; i++)
      FONT_writeCenter(items[i],fontsize,xwindow,xwindow+window->width,ypos+i*fontsize-yoffset,(GXColor)WHITE);


    gxSetScreen();


    yoffset -= 60;
  }


  while (quit == 0)
  {

    GUI_DrawMenu(parent);


    gxDrawTexture(window,xwindow,ywindow,window->width,window->height,230);
    gxDrawTexture(top,xwindow,ywindow,top->width,top->height,255);


    FONT_writeCenter(title,20,xwindow,xwindow+window->width,ywindow+(top->height-20)/2+20,(GXColor)WHITE);


    for (i=0; i<nb_items; i++)
    {
      FONT_writeCenter(items[i],fontsize,xwindow,xwindow+window->width,ypos+i*fontsize,(GXColor)WHITE);
    }
    gxSetScreen();


    if (m_input.keys)
      quit = 1;
  }




  yoffset = 0;
  while (yoffset < (ywindow + window->height))
  {

    GUI_DrawMenu(parent);


    gxDrawTexture(window,xwindow,ywindow-yoffset,window->width,window->height,230);
    gxDrawTexture(top,xwindow,ywindow-yoffset,top->width,top->height,255);


    FONT_writeCenter(title,20,xwindow,xwindow+window->width,ywindow+(top->height-20)/2+20-yoffset,(GXColor)WHITE);


    for (i=0; i<nb_items; i++)
      FONT_writeCenter(items[i],fontsize,xwindow,xwindow+window->width,ypos+i*fontsize-yoffset,(GXColor)WHITE);


    gxSetScreen();


    yoffset += 60;
  }


  if (parent->helpers[1])
    parent->helpers[1]->data = data;


  GUI_DrawMenu(parent);
  gxSetScreen();


  gxTextureClose(&window);
  gxTextureClose(&top);
}
