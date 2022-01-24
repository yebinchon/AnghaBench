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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exp_golomb_0_to_10 ; 
 int /*<<< orphan*/  exp_golomb_large ; 
 int /*<<< orphan*/  exp_golomb_oversize ; 
 int* exp_golomb_values ; 

__attribute__((used)) static int FUNC6(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int32_t value;
   int error_count = 0;

   FUNC3(NULL, "Testing vc_container_bits_get_s32_exp_golomb");
   FUNC0(NULL, &bit_stream, exp_golomb_0_to_10, FUNC5(exp_golomb_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = FUNC1(NULL, &bit_stream, "test_read_s32_exp_golomb");
      if (value != exp_golomb_values[ii])
      {
         FUNC4(NULL, "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = FUNC1(NULL, &bit_stream, "Final bit");
   if (!FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Failed to get final Exp-Golomb value (expected a zero)");
      error_count++;
   }
   value = FUNC1(NULL, &bit_stream, "Beyond final bit");
   if (FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }

   /* Test getting two large (32 bit) Exp-Golomb values */
   FUNC0(NULL, &bit_stream, exp_golomb_large, FUNC5(exp_golomb_large));

   value = FUNC1(NULL, &bit_stream, "Largest signed 32-bit value");
   if (!FUNC2(NULL, &bit_stream) || value != -0x7FFFFFFF)
   {
      FUNC4(NULL, "Failed to get largest signed 32-bit value: %d", value);
      error_count++;
   }

   value = FUNC1(NULL, &bit_stream, "Just too large signed 33-bit value");
   if (FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Unexpectedly got slightly too large signed 32-bit value: %d", value);
      error_count++;
   }

   /* Test getting an oversize (33 bit) Exp-Golomb value */
   FUNC0(NULL, &bit_stream, exp_golomb_oversize, FUNC5(exp_golomb_oversize));

   value = FUNC1(NULL, &bit_stream, "Larger signed 33-bit value");
   if (FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Unexpectedly got signed 33-bit value: %d", value);
      error_count++;
   }

   return error_count;
}