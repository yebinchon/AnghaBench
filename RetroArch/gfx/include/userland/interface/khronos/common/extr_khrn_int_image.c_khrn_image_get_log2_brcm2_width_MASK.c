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
typedef  int KHRN_IMAGE_FORMAT_T ;

/* Variables and functions */
#define  IMAGE_FORMAT_1 135 
#define  IMAGE_FORMAT_16 134 
#define  IMAGE_FORMAT_32 133 
#define  IMAGE_FORMAT_4 132 
#define  IMAGE_FORMAT_8 131 
 int IMAGE_FORMAT_COMP_MASK ; 
#define  IMAGE_FORMAT_ETC1 130 
 int IMAGE_FORMAT_PIXEL_SIZE_MASK ; 
#define  IMAGE_FORMAT_UNCOMP 129 
#define  IMAGE_FORMAT_YUYV 128 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

uint32_t FUNC4(KHRN_IMAGE_FORMAT_T format)
{
   FUNC3(FUNC1(format) || FUNC2(format));

   switch (format & IMAGE_FORMAT_COMP_MASK) {
   case IMAGE_FORMAT_UNCOMP:
   {
      switch (format & IMAGE_FORMAT_PIXEL_SIZE_MASK) {
      case IMAGE_FORMAT_1:  return 6;
      case IMAGE_FORMAT_4:  return 4;
      case IMAGE_FORMAT_8:  return 3;
      case IMAGE_FORMAT_16: return 3;
      case IMAGE_FORMAT_32: return 2;
      default:              FUNC0(); return 0;
      }
   }
   case IMAGE_FORMAT_ETC1: return 3;
   case IMAGE_FORMAT_YUYV: return 3;
   default:                FUNC0(); return 0;
   }
}