#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int width; int height; struct TYPE_7__* data; } ;
typedef  TYPE_1__ gx_texture ;
struct TYPE_8__ {int /*<<< orphan*/  keys; } ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  Bg_intro_c1_png ; 
 int /*<<< orphan*/  Bg_intro_c2_png ; 
 int /*<<< orphan*/  Bg_intro_c3_png ; 
 int /*<<< orphan*/  Bg_intro_c4_png ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  Key_A_gcn_png ; 
 int /*<<< orphan*/  Key_A_wii_png ; 
 scalar_t__ SKY_BLUE ; 
 int /*<<< orphan*/  VOICE_MONO_16BIT ; 
 scalar_t__ WHITE ; 
 scalar_t__ button_select_pcm ; 
 int /*<<< orphan*/  button_select_pcm_size ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ intro_pcm ; 
 int /*<<< orphan*/  intro_pcm_size ; 
 TYPE_2__ m_input ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13 ()
{
  int count = 2000;
  int vis = 0;

#ifdef HW_RVL
  gx_texture *button = gxTextureOpenPNG(Key_A_wii_png,0);
#else
  gx_texture *button = FUNC10(Key_A_gcn_png,0);
#endif
  gx_texture *logo = FUNC10(Bg_intro_c4_png,0);

  FUNC6((GXColor)BLACK);
  FUNC11(56);
  FUNC7(logo, (640-logo->width)/2, 480-24-logo->height, logo->width, logo->height,255);
  FUNC8();
  FUNC12(1);

  while (!m_input.keys && count)
  {
    FUNC6((GXColor)BLACK);
    FUNC11(56);
    if (count%25 == 0) vis^=1;
    if (vis)
    {
      FUNC3("Press    button to continue.",24,0,640,366,(GXColor)SKY_BLUE);
      FUNC7(button, 220, 366-24+(24-button->height)/2,  button->width, button->height,255);
    }
    FUNC7(logo, (640-logo->width)/2, 480-24-logo->height, logo->width, logo->height,255);
    FUNC8();
    count--;
  }

  FUNC9(&button);
  FUNC9(&logo);

  if (count > 0)
  {
    FUNC1(0);
    int voice = FUNC0();
    FUNC2(voice,VOICE_MONO_16BIT,44100,0,(u8 *)button_select_pcm,button_select_pcm_size,200,200,NULL);
    FUNC4();
    FUNC1(1);
    return;
  }

  FUNC6((GXColor)BLACK);
  gx_texture *texture = FUNC10(Bg_intro_c1_png,0);
  if (texture)
  {
    FUNC7(texture, (640-texture->width)/2, (480-texture->height)/2,  texture->width, texture->height,255);
    if (texture->data) FUNC5(texture->data);
    FUNC5(texture);
  }
  FUNC8();

  FUNC12 (1);

  FUNC6((GXColor)WHITE);
  texture = FUNC10(Bg_intro_c2_png,0);
  if (texture)
  {
    FUNC7(texture, (640-texture->width)/2, (480-texture->height)/2,  texture->width, texture->height,255);
    if (texture->data) FUNC5(texture->data);
    FUNC5(texture);
  }
  FUNC8();

  FUNC12 (1);

  FUNC6((GXColor)BLACK);
  texture = FUNC10(Bg_intro_c3_png,0);
  if (texture)
  {
    FUNC7(texture, (640-texture->width)/2, (480-texture->height)/2,  texture->width, texture->height,255);
    if (texture->data) FUNC5(texture->data);
    FUNC5(texture);
  }
  FUNC8();

  FUNC1(0);
  int voice = FUNC0();
  FUNC2(voice,VOICE_MONO_16BIT,44100,0,(u8 *)intro_pcm,intro_pcm_size,200,200,NULL);
  FUNC12 (2);
  FUNC1(1);
}