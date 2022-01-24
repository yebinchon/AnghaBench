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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * bits_0_to_10 ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   int error_count = 0;
   uint8_t buffer[FUNC7(bits_0_to_10)];
   uint32_t ii;

   FUNC5(NULL, "Testing vc_container_bits_copy_bytes");
   FUNC1(NULL, &bit_stream, bits_0_to_10, FUNC7(bits_0_to_10));
   FUNC9(buffer, 0, sizeof(buffer));

   /* Copy whole buffer in one go */
   FUNC0(NULL, &bit_stream, FUNC7(buffer), buffer, "Copy whole buffer");

   if (!FUNC4(NULL, &bit_stream))
   {
      FUNC6(NULL, "Failed to copy the whole buffer");
      error_count++;
   }

   if (FUNC8(buffer, bits_0_to_10, FUNC7(bits_0_to_10)) != 0)
   {
      FUNC6(NULL, "Single copy doesn't match original");
      error_count++;
   }

   FUNC1(NULL, &bit_stream, bits_0_to_10, FUNC7(bits_0_to_10));
   FUNC9(buffer, 0, sizeof(buffer));

   /* Copy whole buffer one byte at a time */
   for (ii = 0; ii < FUNC7(bits_0_to_10); ii++)
   {
      FUNC0(NULL, &bit_stream, 1, buffer + ii, "Copy buffer piecemeal");
   }

   if (!FUNC4(NULL, &bit_stream))
   {
      FUNC6(NULL, "Failed to copy the buffer piecemeal");
      error_count++;
   }

   if (FUNC8(buffer, bits_0_to_10, FUNC7(bits_0_to_10)) != 0)
   {
      FUNC6(NULL, "Multiple copy doesn't match original");
      error_count++;
   }

   FUNC1(NULL, &bit_stream, bits_0_to_10, FUNC7(bits_0_to_10));
   FUNC9(buffer, 0, sizeof(buffer));

   /* Copy part of buffer */
   FUNC3(NULL, &bit_stream, 1, "Copy part of buffer");
   FUNC2(NULL, &bit_stream, 1, "Copy part of buffer");
   FUNC0(NULL, &bit_stream, FUNC7(buffer) - 2, buffer, "Copy part of buffer");

   if (!FUNC4(NULL, &bit_stream))
   {
      FUNC6(NULL, "Failed to copy part of buffer");
      error_count++;
   }

   if (FUNC8(buffer, bits_0_to_10 + 1, FUNC7(bits_0_to_10) - 2) != 0)
   {
      FUNC6(NULL, "Partial copy doesn't match original");
      error_count++;
   }

   return error_count;
}