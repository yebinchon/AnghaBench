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
struct curl_llist_element {struct Curl_message* ptr; } ;
struct TYPE_3__ {struct curl_llist_element* head; } ;
struct Curl_multi {TYPE_1__ msglist; int /*<<< orphan*/  in_callback; } ;
struct Curl_message {int /*<<< orphan*/  extmsg; } ;
typedef  int /*<<< orphan*/  CURLMsg ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct curl_llist_element*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct Curl_multi*) ; 
 int FUNC3 (scalar_t__) ; 

CURLMsg *FUNC4(struct Curl_multi *multi, int *msgs_in_queue)
{
  struct Curl_message *msg;

  *msgs_in_queue = 0; /* default to none */

  if(FUNC2(multi) &&
     !multi->in_callback &&
     FUNC0(&multi->msglist)) {
    /* there is one or more messages in the list */
    struct curl_llist_element *e;

    /* extract the head of the list to return */
    e = multi->msglist.head;

    msg = e->ptr;

    /* remove the extracted entry */
    FUNC1(&multi->msglist, e, NULL);

    *msgs_in_queue = FUNC3(FUNC0(&multi->msglist));

    return &msg->extmsg;
  }
  return NULL;
}