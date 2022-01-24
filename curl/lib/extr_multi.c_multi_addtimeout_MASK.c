#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timediff_t ;
struct time_node {size_t eid; int /*<<< orphan*/  list; int /*<<< orphan*/  time; } ;
struct curltime {int dummy; } ;
struct curl_llist_element {scalar_t__ ptr; struct curl_llist_element* next; } ;
struct curl_llist {struct curl_llist_element* head; } ;
struct TYPE_2__ {struct time_node* expires; struct curl_llist timeoutlist; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef  size_t expire_id ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLM_OK ; 
 size_t FUNC0 (struct curl_llist*) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_llist*,struct curl_llist_element*,struct time_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct curltime*,int) ; 

__attribute__((used)) static CURLMcode
FUNC4(struct Curl_easy *data,
                 struct curltime *stamp,
                 expire_id eid)
{
  struct curl_llist_element *e;
  struct time_node *node;
  struct curl_llist_element *prev = NULL;
  size_t n;
  struct curl_llist *timeoutlist = &data->state.timeoutlist;

  node = &data->state.expires[eid];

  /* copy the timestamp and id */
  FUNC3(&node->time, stamp, sizeof(*stamp));
  node->eid = eid; /* also marks it as in use */

  n = FUNC0(timeoutlist);
  if(n) {
    /* find the correct spot in the list */
    for(e = timeoutlist->head; e; e = e->next) {
      struct time_node *check = (struct time_node *)e->ptr;
      timediff_t diff = FUNC2(check->time, node->time);
      if(diff > 0)
        break;
      prev = e;
    }

  }
  /* else
     this is the first timeout on the list */

  FUNC1(timeoutlist, prev, node, &node->list);
  return CURLM_OK;
}