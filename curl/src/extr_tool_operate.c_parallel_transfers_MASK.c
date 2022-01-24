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
struct timeval {int dummy; } ;
struct per_transfer {int dummy; } ;
struct GlobalConfig {int dummy; } ;
struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {TYPE_1__ data; int /*<<< orphan*/ * easy_handle; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURLSH ;
typedef  TYPE_2__ CURLMsg ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLINFO_PRIVATE ; 
 scalar_t__ CURLM_OK ; 
 scalar_t__ CURLM_OUT_OF_MEMORY ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct GlobalConfig*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  all_added ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct per_transfer*) ; 
 scalar_t__ FUNC9 (struct GlobalConfig*,struct per_transfer*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct per_transfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct GlobalConfig*,struct timeval*,int) ; 
 struct timeval FUNC12 () ; 

__attribute__((used)) static CURLcode FUNC13(struct GlobalConfig *global,
                                   CURLSH *share)
{
  CURLM *multi;
  CURLMcode mcode = CURLM_OK;
  CURLcode result = CURLE_OK;
  int still_running = 1;
  struct timeval start = FUNC12();
  bool more_transfers;
  bool added_transfers;

  multi = FUNC4();
  if(!multi)
    return CURLE_OUT_OF_MEMORY;

  result = FUNC0(global, multi, share,
                                  &more_transfers, &added_transfers);
  if(result)
    return result;

  while(!mcode && (still_running || more_transfers)) {
    mcode = FUNC6(multi, NULL, 0, 1000, NULL);
    if(!mcode)
      mcode = FUNC5(multi, &still_running);

    FUNC11(global, &start, FALSE);

    if(!mcode) {
      int rc;
      CURLMsg *msg;
      bool removed = FALSE;
      do {
        msg = FUNC3(multi, &rc);
        if(msg) {
          bool retry;
          struct per_transfer *ended;
          CURL *easy = msg->easy_handle;
          result = msg->data.result;
          FUNC1(easy, CURLINFO_PRIVATE, (void *)&ended);
          FUNC7(multi, easy);

          result = FUNC9(global, ended, result, &retry);
          if(retry)
            continue;
          FUNC10(ended); /* before it goes away */
          all_added--; /* one fewer added */
          removed = TRUE;
          (void)FUNC8(ended);
        }
      } while(msg);
      if(removed) {
        /* one or more transfers completed, add more! */
        (void)FUNC0(global, multi, share,
                                     &more_transfers,
                                     &added_transfers);
        if(added_transfers)
          /* we added new ones, make sure the loop doesn't exit yet */
          still_running = 1;
      }
    }
  }

  (void)FUNC11(global, &start, TRUE);

  /* Make sure to return some kind of error if there was a multi problem */
  if(mcode) {
    result = (mcode == CURLM_OUT_OF_MEMORY) ? CURLE_OUT_OF_MEMORY :
      /* The other multi errors should never happen, so return
         something suitably generic */
      CURLE_BAD_FUNCTION_ARGUMENT;
  }

  FUNC2(multi);

  return result;
}