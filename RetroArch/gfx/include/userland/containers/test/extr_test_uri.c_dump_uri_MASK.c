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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,char const**) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(VC_URI_PARTS_T *uri)
{
   const char *str;
   uint32_t query_count, ii;

   str = FUNC7(uri);
   if (str)
      FUNC0(NULL, "Scheme: <%s>", str);

   str = FUNC8(uri);
   if (str)
      FUNC0(NULL, "Userinfo: <%s>", str);

   str = FUNC2(uri);
   if (str)
      FUNC0(NULL, "Host: <%s>", str);

   str = FUNC5(uri);
   if (str)
      FUNC0(NULL, "Port: <%s>", str);

   str = FUNC4(uri);
   if (str)
      FUNC0(NULL, "Path: <%s>", str);

   query_count = FUNC3(uri);
   for (ii = 0; ii < query_count; ii++)
   {
      const char *value;

      FUNC6(uri, ii, &str, &value);
      if (str)
      {
         if (value)
            FUNC0(NULL, "Query %d: <%s>=<%s>", ii, str, value);
         else
            FUNC0(NULL, "Query %d: <%s>", ii, str);
      }
   }

   str = FUNC1(uri);
   if (str)
      FUNC0(NULL, "Fragment: <%s>", str);
}