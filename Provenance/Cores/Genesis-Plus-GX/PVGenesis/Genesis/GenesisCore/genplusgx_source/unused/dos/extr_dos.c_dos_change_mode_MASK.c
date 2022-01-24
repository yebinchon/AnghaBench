#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int depth; scalar_t__ remap; } ;
struct TYPE_6__ {int video_width; int video_height; int video_depth; int /*<<< orphan*/  video_driver; scalar_t__ scanlines; } ;
struct TYPE_5__ {int r; int g; int b; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_TEXT ; 
 char* allegro_error ; 
 TYPE_4__ bitmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* gen_pal ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__ option ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,char*) ; 
 int /*<<< orphan*/  screen ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void)
{
  int ret;
  int width = option.video_width;
  int height = option.video_height;

  if(option.scanlines) height *= 2;
  ret = FUNC6(option.video_driver, width, height, 0, 0);
  if(ret != 0)
  {
    FUNC6(GFX_TEXT, 0, 0, 0, 0);
    FUNC5("Error setting graphics mode (%dx%d %dbpp).\nAllegro says: `%s'\n", width, height, option.video_depth, allegro_error);
    FUNC2(1);
  }

  if(bitmap.depth == 8)
  {
    if(bitmap.remap)
    {
      int i;
      for(i = 0; i < 0x100; i += 1)
      {
        gen_pal[i].r = ((i >> 5) & 7) << 3;
        gen_pal[i].g = ((i >> 2) & 7) << 3;
        gen_pal[i].b = ((i >> 0) & 3) << 4;
      }
      FUNC7(gen_pal);
    }
    else
    {
      FUNC1(screen, 0xFF);
      gen_pal[0xfe].r = 0xff;
      gen_pal[0xfe].g = 0xff;
      gen_pal[0xfe].b = 0xff;
      FUNC7(gen_pal);
      FUNC3(0x3DA);
      FUNC4(0x3C0, 0x31);
      FUNC4(0x3C0, 0xFF);
    }
  }
  else
  {
    FUNC0(screen);
  }
}