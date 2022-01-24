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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int sheet_image; int first_char; int last_char; int inval_char; int width_table; int cell_height; int cell_width; } ;
typedef  TYPE_1__ sys_fontheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int fheight ; 
 TYPE_1__* fontHeader ; 
 int /*<<< orphan*/ * fontImage ; 
 void* fontTexture ; 
 int /*<<< orphan*/ * font_size ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* ipl_fontarea ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC7(void)
{
#ifndef HW_RVL
  /* --- Game Cube --- disable Qoob before accessing IPL */
  FUNC4(6);
#endif

  /* read IPL font (ASCII) from Mask ROM */
  ipl_fontarea = FUNC5(32,131360);
  if (!ipl_fontarea)
    return 0;
  FUNC6(ipl_fontarea,0,131360);
  FUNC0(ipl_fontarea+119072,12288,0x1FCF00);

  /* YAY0 decompression */
  FUNC1(ipl_fontarea+119072,ipl_fontarea);

	/* retrieve IPL font data */
  fontHeader = (sys_fontheader*)ipl_fontarea;
  fontImage = (u8*)((((u32)ipl_fontarea+fontHeader->sheet_image)+31)&~31);
  
  /* expand to I4 format */
  FUNC2((u8*)ipl_fontarea+fontHeader->sheet_image,fontImage);

  /* character width table */
  int i,c;
  for (i=0; i<256; ++i)
  {
    if ((i < fontHeader->first_char) || (i > fontHeader->last_char))
      c = fontHeader->inval_char;
    else
      c = i - fontHeader->first_char;

    font_size[i] = ((u8*)fontHeader)[fontHeader->width_table + c];
  }

  /* font height */
  fheight = fontHeader->cell_height;

  /* initialize texture data */
  fontTexture = FUNC5(32, fontHeader->cell_width * fontHeader->cell_height / 2);
  if (!fontTexture)
  {
    FUNC3(ipl_fontarea);
    return 0;
  }

  return 1;
}