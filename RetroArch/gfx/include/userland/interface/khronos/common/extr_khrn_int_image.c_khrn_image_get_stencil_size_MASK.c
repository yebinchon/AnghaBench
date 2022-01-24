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
 int DEPTH_32_TLBD ; 
 int DEPTH_COL_64_TLBD ; 
 int IMAGE_FORMAT_32 ; 
 int IMAGE_FORMAT_PIXEL_SIZE_MASK ; 
 int IMAGE_FORMAT_STENCIL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

uint32_t FUNC2(KHRN_IMAGE_FORMAT_T format)
{
   if (FUNC0(format) && (format & IMAGE_FORMAT_STENCIL)) {
      if (format == DEPTH_32_TLBD || format == DEPTH_COL_64_TLBD)
         return 8;
      FUNC1((format & IMAGE_FORMAT_PIXEL_SIZE_MASK) == IMAGE_FORMAT_32);
      return 8;
   } else {
      return 0;
   }
}