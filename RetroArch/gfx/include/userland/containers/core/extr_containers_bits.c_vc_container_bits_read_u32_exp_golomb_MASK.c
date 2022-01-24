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
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

uint32_t FUNC3(VC_CONTAINER_BITS_T *bit_stream)
{
   uint32_t leading_zero_bits;
   uint32_t codeNum;

   leading_zero_bits = FUNC0(bit_stream);

   /* Anything bigger than 32 bits is definitely overflow */
   if (leading_zero_bits > 32)
      return FUNC1(bit_stream);

   codeNum = FUNC2(bit_stream, leading_zero_bits);

   if (leading_zero_bits == 32)
   {
      /* If codeNum is non-zero, it would need 33 bits, so is also overflow */
      if (codeNum)
         return FUNC1(bit_stream);

      return 0xFFFFFFFF;
   }

   return codeNum + (1 << leading_zero_bits) - 1;
}