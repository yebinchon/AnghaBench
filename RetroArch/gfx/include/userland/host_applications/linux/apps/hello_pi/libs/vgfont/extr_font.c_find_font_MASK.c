#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int ptsize; int /*<<< orphan*/  font; struct TYPE_6__* next; } ;
typedef  TYPE_1__ gx_font_cache_entry_t ;
typedef  int /*<<< orphan*/  VGFT_FONT_T ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_5__ default_font ; 
 int /*<<< orphan*/  fname ; 
 TYPE_1__* fonts ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VGFT_FONT_T *FUNC7(const char *text, uint32_t text_size)
{
   int ptsize, dpi_x = 0, dpi_y = 0;
   VCOS_STATUS_T status;
   gx_font_cache_entry_t *font;

   ptsize = text_size << 6; // freetype takes size in points, in 26.6 format.

   for (font = fonts; font; font = font->next)
   {
      if (font->ptsize == ptsize)
         return &font->font;
   }

   font = FUNC2(sizeof(*font), "font");
   if (!font)
      return NULL;

   font->ptsize = ptsize;

   status = FUNC4(&font->font);
   if (status != VCOS_SUCCESS)
   {
      FUNC1(font);
      return NULL;
   }

   // load the font
   status = FUNC5(&font->font, default_font.mem, default_font.len);
   if (status != VCOS_SUCCESS)
   {
      FUNC0("Could not load font from memory: %d", status);
      FUNC6(&font->font);
      FUNC1(font);
      return NULL;
   }

   status = FUNC3(&font->font, ptsize, dpi_x, dpi_y);
   if (status != VCOS_SUCCESS)
   {
      FUNC0("Could not convert font '%s' at size %d", fname, ptsize);
      FUNC6(&font->font);
      FUNC1(font);
      return NULL;
   }

   font->next = fonts;
   fonts = font;

   return &font->font;
}