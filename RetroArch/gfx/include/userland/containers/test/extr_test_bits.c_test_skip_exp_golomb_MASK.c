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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exp_golomb_0_to_10 ; 

__attribute__((used)) static int FUNC6(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;

   FUNC3(NULL, "Testing vc_container_bits_skip_exp_golomb");
   FUNC0(NULL, &bit_stream, exp_golomb_0_to_10, FUNC5(exp_golomb_0_to_10));

   for (ii = 0; ii < 12; ii++)
   {
      FUNC1(NULL, &bit_stream, "test_skip_exp_golomb");
   }

   if (!FUNC2(NULL, &bit_stream))
   {
      FUNC4(NULL, "Failed to skip through buffer");
      error_count++;
   }

   FUNC1(NULL, &bit_stream, "Skip beyond end of stream");
   if (FUNC2(NULL, &bit_stream))
   {
      FUNC4(NULL, "Unexpectedly succeeded skipping beyond expected end of stream");
      error_count++;
   }

   return error_count;
}