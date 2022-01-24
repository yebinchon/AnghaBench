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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  bits_0_to_10 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii, value;
   int error_count = 0;

   FUNC3(NULL, "Testing vc_container_bits_get_u32");
   FUNC0(NULL, &bit_stream, bits_0_to_10, FUNC5(bits_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = FUNC1(NULL, &bit_stream, ii, "test_read_u32");
      if (value != ii)
      {
         FUNC4(NULL, "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = FUNC1(NULL, &bit_stream, 1, "Final bit");
   if (!FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Failed to get final bit");
      error_count++;
   }
   value = FUNC1(NULL, &bit_stream, 1, "Beyond final bit");
   if (FUNC2(NULL, &bit_stream) || value)
   {
      FUNC4(NULL, "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }

   return error_count;
}