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
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(VC_URI_PARTS_T *uri, const char *expected)
{
   uint32_t built_len;
   char *built;

   built_len = FUNC4(uri, NULL, 0) + 1;
   built = (char *)FUNC2(built_len);
   if (!built)
   {
      FUNC0(NULL, "*** Unexpected memory allocation failure: %d bytes", built_len);
      return 1;
   }

   FUNC4(uri, built, built_len);

   if (FUNC3(built, expected) != 0)
   {
      FUNC0(NULL, "*** Built URI <%s>\nexpected  <%s>", built, expected);
      FUNC1(built);
      return 1;
   }

   FUNC1(built);

   return 0;
}