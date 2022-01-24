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
struct curltime {int dummy; } ;
struct Curl_tree {int /*<<< orphan*/  payload; } ;
struct Curl_multi {int num_alive; int /*<<< orphan*/  timetree; struct Curl_easy* easyp; scalar_t__ in_callback; } ;
struct Curl_easy {struct Curl_easy* next; } ;
typedef  scalar_t__ CURLMcode ;

/* Variables and functions */
 scalar_t__ CURLM_BAD_HANDLE ; 
 scalar_t__ CURLM_OK ; 
 scalar_t__ CURLM_RECURSIVE_API_CALL ; 
 struct curltime FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct curltime,int /*<<< orphan*/ ,struct Curl_tree**) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct curltime,struct Curl_multi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct Curl_multi*,struct curltime,struct Curl_easy*) ; 
 int /*<<< orphan*/  pipe_st ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

CURLMcode FUNC9(struct Curl_multi *multi, int *running_handles)
{
  struct Curl_easy *data;
  CURLMcode returncode = CURLM_OK;
  struct Curl_tree *t;
  struct curltime now = FUNC0();

  if(!FUNC3(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  data = multi->easyp;
  while(data) {
    CURLMcode result;
    FUNC4(pipe_st);

    FUNC7(data, &pipe_st);
    result = FUNC6(multi, now, data);
    FUNC8(&pipe_st);

    if(result)
      returncode = result;

    data = data->next; /* operate on next handle */
  }

  /*
   * Simply remove all expired timers from the splay since handles are dealt
   * with unconditionally by this function and curl_multi_timeout() requires
   * that already passed/handled expire times are removed from the splay.
   *
   * It is important that the 'now' value is set at the entry of this function
   * and not for the current time as it may have ticked a little while since
   * then and then we risk this loop to remove timers that actually have not
   * been handled!
   */
  do {
    multi->timetree = FUNC1(now, multi->timetree, &t);
    if(t)
      /* the removed may have another timeout in queue */
      (void)FUNC5(now, multi, t->payload);

  } while(t);

  *running_handles = multi->num_alive;

  if(CURLM_OK >= returncode)
    FUNC2(multi);

  return returncode;
}