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
typedef  size_t uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_6__ {size_t num_queries; TYPE_1__* queries; int /*<<< orphan*/  fragment; int /*<<< orphan*/  path; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  userinfo; int /*<<< orphan*/  scheme; } ;
typedef  TYPE_2__ VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( VC_URI_PARTS_T *p_uri )
{
   if (!p_uri)
      return;

   FUNC1(&p_uri->scheme);
   FUNC1(&p_uri->userinfo);
   FUNC1(&p_uri->host);
   FUNC1(&p_uri->port);
   FUNC1(&p_uri->path);
   FUNC1(&p_uri->fragment);

   if (p_uri->queries)
   {
      VC_URI_QUERY_T *queries = p_uri->queries;
      uint32_t count = p_uri->num_queries;

      while (count--)
      {
         FUNC1(&queries[count].name);
         FUNC1(&queries[count].value);
      }

      FUNC0(queries);
      p_uri->queries = NULL;
      p_uri->num_queries = 0;
   }
}