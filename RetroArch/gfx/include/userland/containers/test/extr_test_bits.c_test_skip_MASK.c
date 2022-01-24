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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  bits_0_to_10 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;
   uint32_t last_bits_left, bits_left;

   FUNC4(NULL, "Testing vc_container_bits_skip");
   FUNC1(NULL, &bit_stream, bits_0_to_10, FUNC6(bits_0_to_10));

   last_bits_left = FUNC0(NULL, &bit_stream);
   for (ii = 0; ii < 11; ii++)
   {
      FUNC2(NULL, &bit_stream, ii, "test_skip");
      bits_left = FUNC0(NULL, &bit_stream);
      if (bits_left + ii != last_bits_left)
      {
         int32_t actual = last_bits_left - bits_left;
         FUNC5(NULL, "Tried to skip %u bit%s, actually skipped %d bit%s",
               ii, FUNC7(ii), actual, FUNC7(actual));
         error_count++;
      }
      last_bits_left = bits_left;
   }

   FUNC2(NULL, &bit_stream, 1, "Final bit");
   if (!FUNC3(NULL, &bit_stream))
   {
      FUNC5(NULL, "Failed to skip final bit");
      error_count++;
   }
   if (FUNC0(NULL, &bit_stream))
   {
      FUNC5(NULL, "End of stream not reached by skipping");
      error_count++;
   }

   FUNC2(NULL, &bit_stream, 1, "Beyond final bit");
   if (FUNC3(NULL, &bit_stream))
   {
      FUNC5(NULL, "Unexpectedly succeeded skipping beyond expected end of stream");
      error_count++;
   }
   return error_count;
}