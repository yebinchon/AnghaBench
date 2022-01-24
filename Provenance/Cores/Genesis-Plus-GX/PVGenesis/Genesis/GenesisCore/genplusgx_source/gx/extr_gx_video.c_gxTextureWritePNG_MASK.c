#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ **** u8 ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int /*<<< orphan*/ **** png_bytep ;
struct TYPE_3__ {int width; int height; scalar_t__ data; } ;
typedef  TYPE_1__ gx_texture ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_COLOR_TYPE_RGB_ALPHA ; 
 int /*<<< orphan*/  PNG_COMPRESSION_TYPE_DEFAULT ; 
 int /*<<< orphan*/  PNG_FILTER_TYPE_DEFAULT ; 
 int /*<<< orphan*/  PNG_INTERLACE_NONE ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  PNG_TRANSFORM_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(gx_texture *texture, FILE *png_file)
{
  /* allocate PNG data buffer */
  u8 *img_data = (u8 *)FUNC1(32, texture->width * texture->height * 4);
  if(!img_data) return;

  /* decode GX_TF_RGBA8 format (4x4 pixels paired titles) */
  u16 *ar = (u16 *)(texture->data);
  u16 *gb = (u16 *)(texture->data + 32);
  u32 *dst1 = (u32 *)(img_data);
  u32 *dst2 = dst1 + texture->width;
  u32 *dst3 = dst2 + texture->width;
  u32 *dst4 = dst3 + texture->width;
  u32 i,h,w,pixel;

  for (h=0; h<texture->height; h+=4)
  {
    for (w=0; w<texture->width; w+=4)
    {
      /* line N (4 pixels) */
      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst1++ = pixel;
        ar++;
        gb++;
      }

      /* line N + 1 (4 pixels) */
      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst2++ = pixel;
        ar++;
        gb++;
      }

      /* line N + 2 (4 pixels) */
      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst3++ = pixel;
        ar++;
        gb++;
      }

      /* line N + 3 (4 pixels) */
      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst4++ = pixel;
        ar++;
        gb++;
      }

      /* next paired tiles */
      ar += 16;
      gb += 16;
    }

    /* next 4 lines */
    dst1 = dst4;
    dst2 = dst1 + texture->width;
    dst3 = dst2 + texture->width;
    dst4 = dst3 + texture->width;
  }

  /* create a png write struct */
  png_structp png_ptr = FUNC3(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  if(!png_ptr)
  {
    FUNC0(img_data);
    return;
  }

  /* create a png info struct */
  png_infop info_ptr = FUNC2 (png_ptr);
  if (!info_ptr)
  {
    FUNC0(img_data);
    FUNC4(&png_ptr, NULL);
    return;
  }

  /* set IO callback for the write function */
  FUNC5(png_ptr, png_file);

  /* set PNG file properties */
  FUNC6(png_ptr, info_ptr, texture->width, texture->height, 8, PNG_COLOR_TYPE_RGB_ALPHA, 
               PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

  /* allocate row pointer data */
  png_bytep *row_pointers = (png_bytep *)FUNC1 (32, sizeof (png_bytep) * texture->height);
  if (!row_pointers)
  {
    FUNC0 (img_data);
    FUNC4(&png_ptr, &info_ptr);
    return;
  }

  /* store raw image data */
  for (i = 0; i < texture->height; i++)
  {
    row_pointers[i] = *(img_data + (i * texture->width * 4));
  }

  /* configure libpng for image data */
  FUNC7(png_ptr,info_ptr,row_pointers);

  /* write data to PNG file */
  FUNC9(png_ptr,info_ptr,PNG_TRANSFORM_IDENTITY,NULL);

  /* finish compression and release memory */
  FUNC8(png_ptr, NULL);
  FUNC0(row_pointers);
  FUNC0(img_data);
  FUNC4(&png_ptr, &info_ptr);
}