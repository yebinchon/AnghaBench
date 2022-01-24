#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_6__ {int num_queries; TYPE_1__* queries; } ;
typedef  TYPE_2__ VC_URI_PARTS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

bool FUNC4( VC_URI_PARTS_T *p_uri, const char *name, const char *value )
{
   VC_URI_QUERY_T *queries;
   uint32_t count;

   if (!p_uri || !name)
      return false;

   count = p_uri->num_queries;
   if (p_uri->queries)
      queries = (VC_URI_QUERY_T *)FUNC2(p_uri->queries, (count + 1) * sizeof(VC_URI_QUERY_T));
   else
      queries = (VC_URI_QUERY_T *)FUNC1(sizeof(VC_URI_QUERY_T));

   if (!queries)
      return false;

   /* Always store the pointer, in case it has changed, and even if we fail to copy name/value */
   p_uri->queries = queries;
   queries[count].name = NULL;
   queries[count].value = NULL;

   if (FUNC0(name, &queries[count].name))
   {
      if (FUNC0(value, &queries[count].value))
      {
         /* Successful exit path */
         p_uri->num_queries++;
         return true;
      }

      FUNC3(&queries[count].name);
   }

   return false;
}