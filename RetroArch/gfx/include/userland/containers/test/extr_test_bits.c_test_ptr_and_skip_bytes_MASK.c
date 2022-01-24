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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  const* bits_0_to_10 ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   const uint8_t *expected_ptr;
   int error_count = 0;
   uint32_t last_bytes_left, bytes_left;

   FUNC5(NULL, "Testing vc_container_bits_current_pointer, vc_container_bits_skip_bytes and vc_container_bits_bytes_available");
   FUNC2(NULL, &bit_stream, bits_0_to_10, FUNC7(bits_0_to_10));

   last_bytes_left = FUNC0(NULL, &bit_stream);
   if (last_bytes_left != FUNC7(bits_0_to_10))
   {
      FUNC6(NULL, "Expected bytes available to initially match given size");
      error_count++;
   }

   if (FUNC1(NULL, &bit_stream) != bits_0_to_10)
   {
      FUNC6(NULL, "Expected initial current pointer to match original buffer");
      error_count++;
   }

   expected_ptr = bits_0_to_10;
   for (ii = 0; ii < 4; ii++)
   {
      FUNC3(NULL, &bit_stream, ii, "test_ptr_and_skip_bytes");

      expected_ptr += ii;
      if (FUNC1(NULL, &bit_stream) != expected_ptr)
      {
         FUNC6(NULL, "Expected current pointer to have moved by %u byte%s", ii, FUNC8(ii));
         error_count++;
      }

      bytes_left = FUNC0(NULL, &bit_stream);
      if (bytes_left + ii != last_bytes_left)
      {
         int32_t actual = last_bytes_left - bytes_left;
         FUNC6(NULL, "Tried to skip %u byte%s, actually skipped %d byte%s",
               ii, FUNC8(ii), actual, FUNC8(actual));
         error_count++;
      }

      last_bytes_left = bytes_left;
   }

   if (!bytes_left)
   {
      FUNC6(NULL, "Reached end of stream too soon");
      error_count++;
   }
   if (!FUNC4(NULL, &bit_stream))
   {
      FUNC6(NULL, "Expected stream to be valid");
      error_count++;
   }

   FUNC3(NULL, &bit_stream, bytes_left + 1, "Beyond end of stream");
   if (FUNC4(NULL, &bit_stream))
   {
      FUNC6(NULL, "Unexpectedly succeeded skipping bytes beyond end of stream");
      error_count++;
   }
   if (FUNC0(NULL, &bit_stream))
   {
      FUNC6(NULL, "Expected stream to have been reset");
      error_count++;
   }

   return error_count;
}