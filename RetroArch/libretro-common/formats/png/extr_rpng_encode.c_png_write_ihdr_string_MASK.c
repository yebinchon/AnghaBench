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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct png_ihdr {char depth; char color_type; char compression; char filter; char interlace; int width; int height; } ;
typedef  int /*<<< orphan*/  intfstream_t ;
typedef  int /*<<< orphan*/  ihdr_raw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static bool FUNC3(intfstream_t *intf_s, const struct png_ihdr *ihdr)
{
   uint8_t ihdr_raw[21];

   ihdr_raw[0]  = '0';                 /* Size */
   ihdr_raw[1]  = '0';
   ihdr_raw[2]  = '0';
   ihdr_raw[3]  = '0';
   ihdr_raw[4]  = 'I';
   ihdr_raw[5]  = 'H';
   ihdr_raw[6]  = 'D';
   ihdr_raw[7]  = 'R';
   ihdr_raw[8]  =   0;                 /* Width */
   ihdr_raw[9]  =   0;
   ihdr_raw[10] =   0;
   ihdr_raw[11] =   0;
   ihdr_raw[12] =   0;                 /* Height */
   ihdr_raw[13] =   0;
   ihdr_raw[14] =   0;
   ihdr_raw[15] =   0;
   ihdr_raw[16] =   ihdr->depth;       /* Depth */
   ihdr_raw[17] =   ihdr->color_type;
   ihdr_raw[18] =   ihdr->compression;
   ihdr_raw[19] =   ihdr->filter;
   ihdr_raw[20] =   ihdr->interlace;

   FUNC0(ihdr_raw +  0, sizeof(ihdr_raw) - 8);
   FUNC0(ihdr_raw +  8, ihdr->width);
   FUNC0(ihdr_raw + 12, ihdr->height);
   if (FUNC1(intf_s, ihdr_raw, sizeof(ihdr_raw)) != sizeof(ihdr_raw))
      return false;

   return FUNC2(intf_s, ihdr_raw + sizeof(uint32_t),
         sizeof(ihdr_raw) - sizeof(uint32_t));
}