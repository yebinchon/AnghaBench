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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  VGfloat ;
typedef  int /*<<< orphan*/  VGFT_FONT_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const,double,double,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int32_t FUNC4(GRAPHICS_RESOURCE_HANDLE res,
                                              const char *text,
                                              const uint32_t text_length,
                                              uint32_t *width,
                                              uint32_t *height,
                                              const uint32_t text_size )
{
   GX_CLIENT_STATE_T save;
   VGfloat w, h;
   int ret = -1;

   FUNC2(&save, res);

   VGFT_FONT_T *font = FUNC0(text, text_size);
   if (!font)
      goto finish;

   FUNC3(font, text, text_length, 0.0, 0.0, &w, &h);
   *width = w;
   *height = h;
   ret = 0;

finish:
   FUNC1(&save);
   return ret;
}