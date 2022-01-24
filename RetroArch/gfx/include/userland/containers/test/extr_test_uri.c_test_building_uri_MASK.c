#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;
struct TYPE_3__ {char** queries; int /*<<< orphan*/  expected_uri; int /*<<< orphan*/  fragment; int /*<<< orphan*/  path; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  userinfo; int /*<<< orphan*/  scheme; } ;
typedef  TYPE_1__ BUILD_URI_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(VC_URI_PARTS_T *uri, BUILD_URI_T *uri_data)
{
   const char **p_str;
   const char *name, *value;

   FUNC1(NULL, "Building URI <%s>", uri_data->expected_uri);

   FUNC5(uri);

   if (!FUNC10(uri, uri_data->scheme))
   {
      FUNC0(NULL, "*** Failed to set scheme");
      return 1;
   }

   if (!FUNC11(uri, uri_data->userinfo))
   {
      FUNC0(NULL, "*** Failed to set userinfo");
      return 1;
   }

   if (!FUNC7(uri, uri_data->host))
   {
      FUNC0(NULL, "*** Failed to set host");
      return 1;
   }

   if (!FUNC9(uri, uri_data->port))
   {
      FUNC0(NULL, "*** Failed to set port");
      return 1;
   }

   if (!FUNC8(uri, uri_data->path))
   {
      FUNC0(NULL, "*** Failed to set path");
      return 1;
   }

   if (!FUNC6(uri, uri_data->fragment))
   {
      FUNC0(NULL, "*** Failed to set fragment");
      return 1;
   }

   p_str = uri_data->queries;
   name = *p_str++;

   while (name)
   {
      value = *p_str++;
      if (!FUNC4(uri, name, value))
      {
         FUNC0(NULL, "*** Failed to add query");
         return 1;
      }
      name = *p_str++;
   }

   FUNC3(uri);

   return FUNC2(uri, uri_data->expected_uri);
}