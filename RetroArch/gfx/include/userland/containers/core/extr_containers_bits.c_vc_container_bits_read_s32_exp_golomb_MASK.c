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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int32_t FUNC2(VC_CONTAINER_BITS_T *bit_stream)
{
   uint32_t uval;

   uval = FUNC1(bit_stream);

   /* The signed Exp-Golomb code 0xFFFFFFFF cannot be represented as a signed 32-bit
    * integer, because it should be one larger than the largest positive value. */
   if (uval == 0xFFFFFFFF)
      return FUNC0(bit_stream);

   /* Definition of conversion is
    *    s = ((-1)^(u + 1)) * Ceil(u / 2)
    * where '^' is power, but this should be equivalent */
   return ((int32_t)((uval & 1) << 1) - 1) * (int32_t)((uval >> 1) + (uval & 1));
}