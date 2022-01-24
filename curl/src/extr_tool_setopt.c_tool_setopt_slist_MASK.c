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
struct curl_slist {int dummy; } ;
struct GlobalConfig {scalar_t__ libcurl; } ;
typedef  int /*<<< orphan*/  CURLoption ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*,int*) ; 

CURLcode FUNC3(CURL *curl, struct GlobalConfig *config,
                           const char *name, CURLoption tag,
                           struct curl_slist *list)
{
  CURLcode ret = CURLE_OK;

  ret = FUNC1(curl, tag, list);

  if(config->libcurl && list && !ret) {
    int i;

    ret = FUNC2(list, &i);
    if(!ret)
      FUNC0("curl_easy_setopt(hnd, %s, slist%d);", name, i);
  }

 nomem:
  return ret;
}