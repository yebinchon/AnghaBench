#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GRAPHICS_RESOURCE_HEIGHT ; 
 int /*<<< orphan*/  GRAPHICS_RESOURCE_RGBA32 ; 
 int /*<<< orphan*/  GRAPHICS_RESOURCE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  VC_DISPMAN_ROT0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int) ; 

int FUNC11(void)
{
   GRAPHICS_RESOURCE_HANDLE img;
   uint32_t width, height;
   int LAYER=1;
   FUNC2();
   int s;

   s = FUNC9(".");
   FUNC1(s == 0);

   s = FUNC5(0, &width, &height);
   FUNC1(s == 0);

   s = FUNC8(0, width, height, GRAPHICS_RESOURCE_RGBA32, &img);
   FUNC1(s == 0);

   // transparent before display to avoid screen flash
   FUNC6(img, 0, 0, width, height, FUNC0(0,0,0,0x00));

   FUNC4(img, 0, LAYER, 0, 0, GRAPHICS_RESOURCE_WIDTH, GRAPHICS_RESOURCE_HEIGHT, VC_DISPMAN_ROT0, 1);

   uint32_t text_size = 10;
   while (1) {
      const char *text = "The quick brown fox jumps over the lazy dog";
      uint32_t y_offset = height-60+text_size/2;
      FUNC6(img, 0, 0, width, height, FUNC0(0,0,0,0x00));
      // blue, at the top (y=40)
      FUNC6(img, 0, 40, width, 1, FUNC0(0,0,0xff,0xff));

      // green, at the bottom (y=height-40)
      FUNC6(img, 0, height-40, width, 1, FUNC0(0,0xff,0,0xff));

      // draw the subtitle text
      FUNC10(img, text, 0, text_size,  y_offset);
      FUNC7(img, 0, 0, 0, 0);
      text_size += 1;
      if (text_size > 50)
         text_size = 10;
   }

   FUNC4(img, 0, LAYER, 0, 0, GRAPHICS_RESOURCE_WIDTH, GRAPHICS_RESOURCE_HEIGHT, VC_DISPMAN_ROT0, 0);
   FUNC3(img);

   return 0;
}