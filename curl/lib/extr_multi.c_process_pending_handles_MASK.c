#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct curl_llist_element {struct Curl_easy* ptr; } ;
struct TYPE_4__ {struct curl_llist_element* head; } ;
struct Curl_multi {TYPE_2__ pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  previouslypending; } ;
struct Curl_easy {scalar_t__ mstate; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLM_STATE_CONNECT ; 
 scalar_t__ CURLM_STATE_CONNECT_PEND ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct curl_llist_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPIRE_RUN_NOW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct Curl_multi *multi)
{
  struct curl_llist_element *e = multi->pending.head;
  if(e) {
    struct Curl_easy *data = e->ptr;

    FUNC2(data->mstate == CURLM_STATE_CONNECT_PEND);

    FUNC3(data, CURLM_STATE_CONNECT);

    /* Remove this node from the list */
    FUNC1(&multi->pending, e, NULL);

    /* Make sure that the handle will be processed soonish. */
    FUNC0(data, 0, EXPIRE_RUN_NOW);

    /* mark this as having been in the pending queue */
    data->state.previouslypending = TRUE;
  }
}