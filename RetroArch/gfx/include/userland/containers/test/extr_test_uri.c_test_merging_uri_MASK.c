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
struct TYPE_3__ {int /*<<< orphan*/  merged; int /*<<< orphan*/  relative; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ MERGE_URI_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(VC_URI_PARTS_T *uri, MERGE_URI_T *uri_data)
{
   VC_URI_PARTS_T *base_uri;

   FUNC1(NULL, "Base <%s>, relative <%s>, expect <%s>", uri_data->base, uri_data->relative, uri_data->merged);

   FUNC3(uri);
   base_uri = FUNC4();
   if (!base_uri)
   {
      FUNC0(NULL, "*** Failed to allocate base URI structure");
      return 1;
   }

   if (!FUNC6(base_uri, uri_data->base))
   {
      FUNC0(NULL, "*** Failed to parse base URI structure");
      return 1;
   }
   if (!FUNC6(uri, uri_data->relative))
   {
      FUNC0(NULL, "*** Failed to parse relative URI structure");
      return 1;
   }

   if (!FUNC5(base_uri, uri))
   {
      FUNC0(NULL, "*** Failed to merge base and relative URIs");
      return 1;
   }

   FUNC7(base_uri);

   return FUNC2(uri, uri_data->merged);
}