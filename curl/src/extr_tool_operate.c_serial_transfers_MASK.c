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
struct per_transfer {int /*<<< orphan*/  mlfile; int /*<<< orphan*/  curl; } ;
struct GlobalConfig {int /*<<< orphan*/  current; scalar_t__ fail_early; scalar_t__ test_event_based; scalar_t__ libcurl; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURLSH ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct GlobalConfig*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct per_transfer* FUNC3 (struct per_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct GlobalConfig*,struct per_transfer*,scalar_t__,int*) ; 
 scalar_t__ FUNC8 (struct GlobalConfig*,struct per_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct per_transfer* transfers ; 

__attribute__((used)) static CURLcode FUNC10(struct GlobalConfig *global,
                                 CURLSH *share)
{
  CURLcode returncode = CURLE_OK;
  CURLcode result = CURLE_OK;
  struct per_transfer *per;
  bool added = FALSE;

  result = FUNC0(global, share, &added);
  if(result || !added)
    return result;
  for(per = transfers; per;) {
    bool retry;
    bool bailout = FALSE;
    result = FUNC8(global, per);
    if(result)
      break;

#ifndef CURL_DISABLE_LIBCURL_OPTION
    if(global->libcurl) {
      result = FUNC5();
      if(result)
        break;
    }
#endif
#ifdef CURLDEBUG
    if(global->test_event_based)
      result = curl_easy_perform_ev(per->curl);
    else
#endif
      result = FUNC1(per->curl);

    /* store the result of the actual transfer */
    returncode = result;

    result = FUNC7(global, per, result, &retry);
    if(retry)
      continue;

    /* Bail out upon critical errors or --fail-early */
    if(result || FUNC6(returncode) ||
       (returncode && global->fail_early))
      bailout = TRUE;
    else {
      /* setup the next one just before we delete this */
      result = FUNC0(global, share, &added);
      if(result)
        bailout = TRUE;
    }

    /* Release metalink related resources here */
    FUNC4(per->mlfile);

    per = FUNC3(per);

    if(bailout)
      break;
  }
  if(returncode)
    /* returncode errors have priority */
    result = returncode;

  if(result)
    FUNC9(global->current);

  return result;
}