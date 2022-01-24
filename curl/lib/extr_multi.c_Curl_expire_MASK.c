#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int timediff_t ;
typedef  scalar_t__ time_t ;
struct curltime {unsigned int tv_usec; scalar_t__ tv_sec; } ;
struct Curl_multi {int /*<<< orphan*/  timetree; } ;
struct TYPE_5__ {struct Curl_easy* payload; } ;
struct TYPE_4__ {TYPE_2__ timenode; struct curltime expiretime; } ;
struct Curl_easy {TYPE_1__ state; struct Curl_multi* multi; } ;
typedef  int /*<<< orphan*/  expire_id ;

/* Variables and functions */
 struct curltime FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct curltime,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct curltime,struct curltime) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  EXPIRE_LAST ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_easy*,struct curltime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,int /*<<< orphan*/ ) ; 

void FUNC8(struct Curl_easy *data, timediff_t milli, expire_id id)
{
  struct Curl_multi *multi = data->multi;
  struct curltime *nowp = &data->state.expiretime;
  struct curltime set;

  /* this is only interesting while there is still an associated multi struct
     remaining! */
  if(!multi)
    return;

  FUNC4(id < EXPIRE_LAST);

  set = FUNC0();
  set.tv_sec += (time_t)(milli/1000); /* might be a 64 to 32 bit conversion */
  set.tv_usec += (unsigned int)(milli%1000)*1000;

  if(set.tv_usec >= 1000000) {
    set.tv_sec++;
    set.tv_usec -= 1000000;
  }

  /* Remove any timer with the same id just in case. */
  FUNC7(data, id);

  /* Add it to the timer list.  It must stay in the list until it has expired
     in case we need to recompute the minimum timer later. */
  FUNC6(data, &set, id);

  if(nowp->tv_sec || nowp->tv_usec) {
    /* This means that the struct is added as a node in the splay tree.
       Compare if the new time is earlier, and only remove-old/add-new if it
       is. */
    timediff_t diff = FUNC3(set, *nowp);
    int rc;

    if(diff > 0) {
      /* The current splay tree entry is sooner than this new expiry time.
         We don't need to update our splay tree entry. */
      return;
    }

    /* Since this is an updated time, we must remove the previous entry from
       the splay tree first and then re-add the new value */
    rc = FUNC2(multi->timetree,
                                &data->state.timenode,
                                &multi->timetree);
    if(rc)
      FUNC5(data, "Internal error removing splay node = %d\n", rc);
  }

  /* Indicate that we are in the splay tree and insert the new timer expiry
     value since it is our local minimum. */
  *nowp = set;
  data->state.timenode.payload = data;
  multi->timetree = FUNC1(*nowp, multi->timetree,
                                     &data->state.timenode);
}