
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int width; int height; struct TYPE_7__* data; } ;
typedef TYPE_1__ gx_texture ;
struct TYPE_8__ {int keys; } ;
typedef int GXColor ;


 int ASND_GetFirstUnusedVoice () ;
 int ASND_Pause (int) ;
 int ASND_SetVoice (int,int ,int,int ,int *,int ,int,int,int *) ;
 scalar_t__ BLACK ;
 int Bg_intro_c1_png ;
 int Bg_intro_c2_png ;
 int Bg_intro_c3_png ;
 int Bg_intro_c4_png ;
 int FONT_writeCenter (char*,int,int ,int,int,int ) ;
 int GUI_FadeOut () ;
 int Key_A_gcn_png ;
 int Key_A_wii_png ;
 scalar_t__ SKY_BLUE ;
 int VOICE_MONO_16BIT ;
 scalar_t__ WHITE ;
 scalar_t__ button_select_pcm ;
 int button_select_pcm_size ;
 int free (TYPE_1__*) ;
 int gxClearScreen (int ) ;
 int gxDrawTexture (TYPE_1__*,int,int,int,int,int) ;
 int gxSetScreen () ;
 int gxTextureClose (TYPE_1__**) ;
 TYPE_1__* gxTextureOpenPNG (int ,int ) ;
 scalar_t__ intro_pcm ;
 int intro_pcm_size ;
 TYPE_2__ m_input ;
 int show_disclaimer (int) ;
 int sleep (int) ;

void legal ()
{
  int count = 2000;
  int vis = 0;




  gx_texture *button = gxTextureOpenPNG(Key_A_gcn_png,0);

  gx_texture *logo = gxTextureOpenPNG(Bg_intro_c4_png,0);

  gxClearScreen((GXColor)BLACK);
  show_disclaimer(56);
  gxDrawTexture(logo, (640-logo->width)/2, 480-24-logo->height, logo->width, logo->height,255);
  gxSetScreen();
  sleep(1);

  while (!m_input.keys && count)
  {
    gxClearScreen((GXColor)BLACK);
    show_disclaimer(56);
    if (count%25 == 0) vis^=1;
    if (vis)
    {
      FONT_writeCenter("Press    button to continue.",24,0,640,366,(GXColor)SKY_BLUE);
      gxDrawTexture(button, 220, 366-24+(24-button->height)/2, button->width, button->height,255);
    }
    gxDrawTexture(logo, (640-logo->width)/2, 480-24-logo->height, logo->width, logo->height,255);
    gxSetScreen();
    count--;
  }

  gxTextureClose(&button);
  gxTextureClose(&logo);

  if (count > 0)
  {
    ASND_Pause(0);
    int voice = ASND_GetFirstUnusedVoice();
    ASND_SetVoice(voice,VOICE_MONO_16BIT,44100,0,(u8 *)button_select_pcm,button_select_pcm_size,200,200,((void*)0));
    GUI_FadeOut();
    ASND_Pause(1);
    return;
  }

  gxClearScreen((GXColor)BLACK);
  gx_texture *texture = gxTextureOpenPNG(Bg_intro_c1_png,0);
  if (texture)
  {
    gxDrawTexture(texture, (640-texture->width)/2, (480-texture->height)/2, texture->width, texture->height,255);
    if (texture->data) free(texture->data);
    free(texture);
  }
  gxSetScreen();

  sleep (1);

  gxClearScreen((GXColor)WHITE);
  texture = gxTextureOpenPNG(Bg_intro_c2_png,0);
  if (texture)
  {
    gxDrawTexture(texture, (640-texture->width)/2, (480-texture->height)/2, texture->width, texture->height,255);
    if (texture->data) free(texture->data);
    free(texture);
  }
  gxSetScreen();

  sleep (1);

  gxClearScreen((GXColor)BLACK);
  texture = gxTextureOpenPNG(Bg_intro_c3_png,0);
  if (texture)
  {
    gxDrawTexture(texture, (640-texture->width)/2, (480-texture->height)/2, texture->width, texture->height,255);
    if (texture->data) free(texture->data);
    free(texture);
  }
  gxSetScreen();

  ASND_Pause(0);
  int voice = ASND_GetFirstUnusedVoice();
  ASND_SetVoice(voice,VOICE_MONO_16BIT,44100,0,(u8 *)intro_pcm,intro_pcm_size,200,200,((void*)0));
  sleep (2);
  ASND_Pause(1);
}
