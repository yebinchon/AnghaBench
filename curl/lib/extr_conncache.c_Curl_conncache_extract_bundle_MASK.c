#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timediff_t ;
struct curltime {int dummy; } ;
struct curl_llist_element {struct curl_llist_element* next; struct connectdata* ptr; } ;
struct connectdata {struct Curl_easy* data; int /*<<< orphan*/  lastused; } ;
struct TYPE_4__ {struct curl_llist_element* head; } ;
struct connectbundle {TYPE_1__ conn_list; } ;
struct TYPE_6__ {TYPE_2__* conn_cache; } ;
struct Curl_easy {TYPE_3__ state; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 struct curltime FUNC1 () ; 
 scalar_t__ FUNC2 (struct curltime,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct connectbundle*,struct connectdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,int /*<<< orphan*/ ) ; 

struct connectdata *
FUNC6(struct Curl_easy *data,
                              struct connectbundle *bundle)
{
  struct curl_llist_element *curr;
  timediff_t highscore = -1;
  timediff_t score;
  struct curltime now;
  struct connectdata *conn_candidate = NULL;
  struct connectdata *conn;

  (void)data;

  now = FUNC1();

  curr = bundle->conn_list.head;
  while(curr) {
    conn = curr->ptr;

    if(!FUNC0(conn) && !conn->data) {
      /* Set higher score for the age passed since the connection was used */
      score = FUNC2(now, conn->lastused);

      if(score > highscore) {
        highscore = score;
        conn_candidate = conn;
      }
    }
    curr = curr->next;
  }
  if(conn_candidate) {
    /* remove it to prevent another thread from nicking it */
    FUNC4(bundle, conn_candidate);
    data->state.conn_cache->num_conn--;
    FUNC3(FUNC5(data, "The cache now contains %zu members\n",
                 data->state.conn_cache->num_conn));
    conn_candidate->data = data; /* associate! */
  }

  return conn_candidate;
}