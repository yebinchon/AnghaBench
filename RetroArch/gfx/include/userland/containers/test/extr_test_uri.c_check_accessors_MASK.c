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
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * TEST_NAME ; 
 int /*<<< orphan*/ * TEST_STRING ; 
 int /*<<< orphan*/ * TEST_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char const**,char const**) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   const char *str;

   if (FUNC14( uri, TEST_STRING ))
   {
      str = FUNC9(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC14( uri, NULL ))
         error_count++;
      if (FUNC9(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC15( uri, TEST_STRING ))
   {
      str = FUNC16(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC15( uri, NULL ))
         error_count++;
      if (FUNC16(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC11( uri, TEST_STRING ))
   {
      str = FUNC4(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC11( uri, NULL ))
         error_count++;
      if (FUNC4(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC13( uri, TEST_STRING ))
   {
      str = FUNC7(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC13( uri, NULL ))
         error_count++;
      if (FUNC7(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC12( uri, TEST_STRING ))
   {
      str = FUNC6(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC12( uri, NULL ))
         error_count++;
      if (FUNC6(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC10( uri, TEST_STRING ))
   {
      str = FUNC3(uri);
      if (!str || FUNC1(TEST_STRING, str))
         error_count++;
      if (!FUNC10( uri, NULL ))
         error_count++;
      if (FUNC3(uri))
         error_count++;
   } else
      error_count++;

   if (FUNC2( uri, NULL, NULL ))
      error_count++;
   if (FUNC2( uri, NULL, TEST_VALUE ))
      error_count++;
   if (!FUNC2( uri, TEST_STRING, NULL ))
      error_count++;
   if (!FUNC2( uri, TEST_NAME, TEST_VALUE ))
      error_count++;

   if (FUNC5(uri) == 2)
   {
      const char *name = NULL, *value = NULL;

      FUNC8(uri, 0, &name, &value);
      if (!name || FUNC1(TEST_STRING, name))
         error_count++;
      if (value)
         error_count++;

      FUNC8(uri, 1, &name, &value);
      if (!name || FUNC1(TEST_NAME, name))
         error_count++;
      if (!value || FUNC1(TEST_VALUE, value))
         error_count++;
   } else
      error_count++;

   if (error_count)
      FUNC0(NULL, "Accessors failed");

   return error_count;
}