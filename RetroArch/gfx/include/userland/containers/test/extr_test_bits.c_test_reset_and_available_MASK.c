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
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  bits_0_to_10 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   int error_count = 0;

   FUNC3(NULL, "Testing vc_container_bits_reset and vc_container_bits_available");
   FUNC1(NULL, &bit_stream, bits_0_to_10, FUNC5(bits_0_to_10));

   if (!FUNC0(NULL, &bit_stream))
   {
      FUNC4(NULL, "Expected initialised stream to contain bits");
      error_count++;
   }

   FUNC2(NULL, &bit_stream);

   if (FUNC0(NULL, &bit_stream))
   {
      FUNC4(NULL, "Expected reset stream not to contain bits");
      error_count++;
   }

   return error_count;
}