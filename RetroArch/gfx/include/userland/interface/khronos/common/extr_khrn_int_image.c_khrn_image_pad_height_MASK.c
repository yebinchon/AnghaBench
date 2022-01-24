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
#define  IMAGE_FORMAT_BRCM1 131 
#define  IMAGE_FORMAT_BRCM2 130 
#define  IMAGE_FORMAT_BRCM4 129 
 int IMAGE_FORMAT_INVALID ; 
 int IMAGE_FORMAT_MEM_LAYOUT_MASK ; 
#define  IMAGE_FORMAT_RSO 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

uint32_t FUNC5(KHRN_IMAGE_FORMAT_T format, uint32_t height)
{
   FUNC4(format != IMAGE_FORMAT_INVALID);

   switch (format & IMAGE_FORMAT_MEM_LAYOUT_MASK) {
   case IMAGE_FORMAT_RSO: return height;
   case IMAGE_FORMAT_BRCM1:  return FUNC3(height, (uint32_t) (1 << FUNC1(format)));
   case IMAGE_FORMAT_BRCM2:  return FUNC3(height, (uint32_t) (1 << FUNC2(format)));
   case IMAGE_FORMAT_BRCM4: return FUNC3(height, 64);
   default:               FUNC0(); return 0;
   }
}