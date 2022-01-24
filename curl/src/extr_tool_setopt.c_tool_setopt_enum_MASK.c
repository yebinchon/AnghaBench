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
struct GlobalConfig {scalar_t__ libcurl; } ;
struct TYPE_3__ {long name; long value; } ;
typedef  TYPE_1__ NameValue ;
typedef  int /*<<< orphan*/  CURLoption ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,long) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 

CURLcode FUNC2(CURL *curl, struct GlobalConfig *config,
                          const char *name, CURLoption tag,
                          const NameValue *nvlist, long lval)
{
  CURLcode ret = CURLE_OK;
  bool skip = FALSE;

  ret = FUNC1(curl, tag, lval);
  if(!lval)
    skip = TRUE;

  if(config->libcurl && !skip && !ret) {
    /* we only use this for real if --libcurl was used */
    const NameValue *nv = NULL;
    for(nv = nvlist; nv->name; nv++) {
      if(nv->value == lval) break; /* found it */
    }
    if(! nv->name) {
      /* If no definition was found, output an explicit value.
       * This could happen if new values are defined and used
       * but the NameValue list is not updated. */
      FUNC0("curl_easy_setopt(hnd, %s, %ldL);", name, lval);
    }
    else {
      FUNC0("curl_easy_setopt(hnd, %s, (long)%s);", name, nv->name);
    }
  }

 nomem:
  return ret;
}