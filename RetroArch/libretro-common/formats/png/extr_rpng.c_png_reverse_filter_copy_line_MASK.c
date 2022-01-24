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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rpng_process {int* decoded_scanline; int* inflate_buf; unsigned int pitch; unsigned int bpp; int* prev_scanline; int /*<<< orphan*/  palette; } ;
struct png_ihdr {int color_type; int /*<<< orphan*/  depth; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int IMAGE_PROCESS_ERROR_END ; 
 int IMAGE_PROCESS_NEXT ; 
#define  PNG_FILTER_AVERAGE 137 
#define  PNG_FILTER_NONE 136 
#define  PNG_FILTER_PAETH 135 
#define  PNG_FILTER_SUB 134 
#define  PNG_FILTER_UP 133 
#define  PNG_IHDR_COLOR_GRAY 132 
#define  PNG_IHDR_COLOR_GRAY_ALPHA 131 
#define  PNG_IHDR_COLOR_PLT 130 
#define  PNG_IHDR_COLOR_RGB 129 
#define  PNG_IHDR_COLOR_RGBA 128 
 int /*<<< orphan*/  FUNC0 (int*,int*,unsigned int) ; 
 void* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(uint32_t *data, const struct png_ihdr *ihdr,
      struct rpng_process *pngp, unsigned filter)
{
   unsigned i;

   switch (filter)
   {
      case PNG_FILTER_NONE:
         FUNC0(pngp->decoded_scanline, pngp->inflate_buf, pngp->pitch);
         break;
      case PNG_FILTER_SUB:
         for (i = 0; i < pngp->bpp; i++)
            pngp->decoded_scanline[i] = pngp->inflate_buf[i];
         for (i = pngp->bpp; i < pngp->pitch; i++)
            pngp->decoded_scanline[i] = pngp->decoded_scanline[i - pngp->bpp] + pngp->inflate_buf[i];
         break;
      case PNG_FILTER_UP:
         for (i = 0; i < pngp->pitch; i++)
            pngp->decoded_scanline[i] = pngp->prev_scanline[i] + pngp->inflate_buf[i];
         break;
      case PNG_FILTER_AVERAGE:
         for (i = 0; i < pngp->bpp; i++)
         {
            uint8_t avg = pngp->prev_scanline[i] >> 1;
            pngp->decoded_scanline[i] = avg + pngp->inflate_buf[i];
         }
         for (i = pngp->bpp; i < pngp->pitch; i++)
         {
            uint8_t avg = (pngp->decoded_scanline[i - pngp->bpp] + pngp->prev_scanline[i]) >> 1;
            pngp->decoded_scanline[i] = avg + pngp->inflate_buf[i];
         }
         break;
      case PNG_FILTER_PAETH:
         for (i = 0; i < pngp->bpp; i++)
            pngp->decoded_scanline[i] = FUNC1(0, pngp->prev_scanline[i], 0) + pngp->inflate_buf[i];
         for (i = pngp->bpp; i < pngp->pitch; i++)
            pngp->decoded_scanline[i] = FUNC1(pngp->decoded_scanline[i - pngp->bpp],
                  pngp->prev_scanline[i], pngp->prev_scanline[i - pngp->bpp]) + pngp->inflate_buf[i];
         break;

      default:
         return IMAGE_PROCESS_ERROR_END;
   }

   switch (ihdr->color_type)
   {
      case PNG_IHDR_COLOR_GRAY:
         FUNC2(data, pngp->decoded_scanline, ihdr->width, ihdr->depth);
         break;
      case PNG_IHDR_COLOR_RGB:
         FUNC5(data, pngp->decoded_scanline, ihdr->width, ihdr->depth);
         break;
      case PNG_IHDR_COLOR_PLT:
         FUNC4(data, pngp->decoded_scanline, ihdr->width,
               ihdr->depth, pngp->palette);
         break;
      case PNG_IHDR_COLOR_GRAY_ALPHA:
         FUNC3(data, pngp->decoded_scanline, ihdr->width,
               ihdr->depth);
         break;
      case PNG_IHDR_COLOR_RGBA:
         FUNC6(data, pngp->decoded_scanline, ihdr->width, ihdr->depth);
         break;
   }

   FUNC0(pngp->prev_scanline, pngp->decoded_scanline, pngp->pitch);

   return IMAGE_PROCESS_NEXT;
}