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
typedef  int png_uint_32 ;
typedef  size_t png_byte ;

/* Variables and functions */
 int PNG_INTERLACE_NONE ; 
 char** colour_types ; 
 size_t FUNC0 (char*,size_t,size_t,char*) ; 
 size_t FUNC1 (char*,size_t,size_t,int) ; 

__attribute__((used)) static size_t
FUNC2(char *buffer, size_t bufsize, size_t pos, png_byte colour_type,
    int bit_depth, unsigned int npalette, int interlace_type,
    png_uint_32 w, png_uint_32 h, int do_interlace)
{
   pos = FUNC0(buffer, bufsize, pos, colour_types[colour_type]);
   if (colour_type == 3) /* must have a palette */
   {
      pos = FUNC0(buffer, bufsize, pos, "[");
      pos = FUNC1(buffer, bufsize, pos, npalette);
      pos = FUNC0(buffer, bufsize, pos, "]");
   }

   else if (npalette != 0)
      pos = FUNC0(buffer, bufsize, pos, "+tRNS");

   pos = FUNC0(buffer, bufsize, pos, " ");
   pos = FUNC1(buffer, bufsize, pos, bit_depth);
   pos = FUNC0(buffer, bufsize, pos, " bit");

   if (interlace_type != PNG_INTERLACE_NONE)
   {
      pos = FUNC0(buffer, bufsize, pos, " interlaced");
      if (do_interlace)
         pos = FUNC0(buffer, bufsize, pos, "(pngvalid)");
      else
         pos = FUNC0(buffer, bufsize, pos, "(libpng)");
   }

   if (w > 0 || h > 0)
   {
      pos = FUNC0(buffer, bufsize, pos, " ");
      pos = FUNC1(buffer, bufsize, pos, w);
      pos = FUNC0(buffer, bufsize, pos, "x");
      pos = FUNC1(buffer, bufsize, pos, h);
   }

   return pos;
}