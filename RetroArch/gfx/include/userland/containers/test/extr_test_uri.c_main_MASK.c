#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;
struct TYPE_7__ {char* before; int /*<<< orphan*/ * after; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* test_build_uris ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* test_merge_uris ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* test_parse_uris ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int argc, char **argv)
{
   VC_URI_PARTS_T *uri;
   int error_count = 0;
   size_t ii;

   uri = FUNC8();
   if (!uri)
   {
      FUNC1(NULL, "*** Failed to create URI structure.");
      return 1;
   }

   FUNC2(NULL, "Test parameter validation");
   error_count +=  FUNC6(uri);

   FUNC2(NULL, "Test parsing URIs:");
   for (ii = 0; ii < FUNC0(test_parse_uris); ii++)
   {
      error_count += FUNC7(uri, test_parse_uris[ii].before, test_parse_uris[ii].after);
   }

   FUNC2(NULL, "Test building URIs:");
   for (ii = 0; ii < FUNC0(test_build_uris); ii++)
   {
      error_count += FUNC4(uri, &test_build_uris[ii]);
   }

   FUNC2(NULL, "Test merging URIs:");
   for (ii = 0; ii < FUNC0(test_merge_uris); ii++)
   {
      error_count += FUNC5(uri, &test_merge_uris[ii]);
   }

   if (argc > 1)
   {
      FUNC2(NULL, "Test parsing URIs from command line:");

      while (argc-- > 1)
      {
         /* Test URIs passed on the command line are expected to parse and to
          * match themselves when rebuilt. */
         error_count += FUNC7(uri, argv[argc], NULL);
      }
   }

   FUNC9(uri);

   if (error_count)
      FUNC1(NULL, "*** %d errors reported", error_count);

#ifdef _MSC_VER
   LOG_INFO(NULL, "Press return to complete test.");
   getchar();
#endif

   return error_count;
}