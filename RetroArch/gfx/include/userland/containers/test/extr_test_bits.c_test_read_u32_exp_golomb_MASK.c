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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exp_golomb_0_to_10 ; 
 int /*<<< orphan*/  exp_golomb_large ; 
 int /*<<< orphan*/  exp_golomb_oversize ; 

__attribute__((used)) static int FUNC7(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii, value;
   int error_count = 0;

   FUNC4(NULL, "Testing vc_container_bits_get_u32_exp_golomb");
   FUNC0(NULL, &bit_stream, exp_golomb_0_to_10, FUNC6(exp_golomb_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = FUNC2(NULL, &bit_stream, "test_read_u32_exp_golomb");
      if (value != ii)
      {
         FUNC5(NULL, "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = FUNC1(NULL, &bit_stream, 1, "Final bit");
   if (!FUNC3(NULL, &bit_stream) || !value)
   {
      FUNC5(NULL, "Failed to get final bit (expected a 1)");
      error_count++;
   }
   value = FUNC2(NULL, &bit_stream, "Beyond end of stream");
   if (FUNC3(NULL, &bit_stream) || value)
   {
      FUNC5(NULL, "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }

   /* Test getting two large (32 bit) Exp-Golomb values */
   FUNC0(NULL, &bit_stream, exp_golomb_large, FUNC6(exp_golomb_large));

   value = FUNC2(NULL, &bit_stream, "Second largest 32-bit value");
   if (value != 0xFFFFFFFE)
   {
      FUNC5(NULL, "Failed to get second largest 32-bit value");
      error_count++;
   }

   value = FUNC2(NULL, &bit_stream, "Largest 32-bit value");
   if (value != 0xFFFFFFFF)
   {
      FUNC5(NULL, "Failed to get largest 32-bit value");
      error_count++;
   }

   /* Test getting an oversize (33 bit) Exp-Golomb value */
   FUNC0(NULL, &bit_stream, exp_golomb_oversize, FUNC6(exp_golomb_oversize));

   value = FUNC2(NULL, &bit_stream, "Unsigned 33-bit value");
   if (FUNC3(NULL, &bit_stream) || value)
   {
      FUNC5(NULL, "Unexpectedly got 33-bit value: %u", value);
      error_count++;
   }

   return error_count;
}