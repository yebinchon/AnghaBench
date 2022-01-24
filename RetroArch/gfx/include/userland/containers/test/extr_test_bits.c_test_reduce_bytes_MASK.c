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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ bits_0_to_10 ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;
   uint32_t last_bytes_left, bytes_left;

   FUNC6(NULL, "Testing vc_container_bits_reduce_bytes");
   FUNC3(NULL, &bit_stream, bits_0_to_10, FUNC8(bits_0_to_10));

   last_bytes_left = FUNC1(NULL, &bit_stream);
   if (last_bytes_left != FUNC8(bits_0_to_10))
   {
      FUNC7(NULL, "Expected bytes available to initially match given size");
      error_count++;
   }

   if (FUNC2(NULL, &bit_stream) != bits_0_to_10)
   {
      FUNC7(NULL, "Expected initial current pointer to match original buffer");
      error_count++;
   }

   for (ii = 0; ii < 4; ii++)
   {
      FUNC4(NULL, &bit_stream, ii, "test_reduce_bytes");

      if (FUNC2(NULL, &bit_stream) != bits_0_to_10)
      {
         FUNC7(NULL, "Did not expect current pointer to have moved");
         error_count++;
      }

      bytes_left = FUNC1(NULL, &bit_stream);
      if (bytes_left + ii != last_bytes_left)
      {
         int32_t actual = last_bytes_left - bytes_left;
         FUNC7(NULL, "Tried to reduce by %u byte%s, actually reduced by %d byte%s",
               ii, FUNC9(ii), actual, FUNC9(actual));
         error_count++;
      }

      last_bytes_left = bytes_left;
   }

   if (!bytes_left)
   {
      FUNC7(NULL, "Reached end of stream too soon");
      error_count++;
   }
   if (!FUNC5(NULL, &bit_stream))
   {
      FUNC7(NULL, "Expected stream to be valid");
      error_count++;
   }

   FUNC4(NULL, &bit_stream, bytes_left + 1, "Reducing an empty stream");
   if (FUNC5(NULL, &bit_stream))
   {
      FUNC7(NULL, "Unexpectedly succeeded reducing by too many bytes");
      error_count++;
   }
   if (FUNC0(NULL, &bit_stream))
   {
      FUNC7(NULL, "Expected stream to have been reset");
      error_count++;
   }

   return error_count;
}