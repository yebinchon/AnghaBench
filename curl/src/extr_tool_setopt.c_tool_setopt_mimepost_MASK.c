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
struct GlobalConfig {TYPE_1__* current; scalar_t__ libcurl; } ;
typedef  int /*<<< orphan*/  curl_mime ;
struct TYPE_2__ {int /*<<< orphan*/  mimeroot; } ;
typedef  int /*<<< orphan*/  CURLoption ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct GlobalConfig*,int /*<<< orphan*/ ,int*) ; 

CURLcode FUNC3(CURL *curl, struct GlobalConfig *config,
                              const char *name, CURLoption tag,
                              curl_mime *mimepost)
{
  CURLcode ret = FUNC1(curl, tag, mimepost);
  int mimeno = 0;

  if(!ret && config->libcurl) {
    ret = FUNC2(curl, config,
                                config->current->mimeroot, &mimeno);

    if(!ret)
      FUNC0("curl_easy_setopt(hnd, %s, mime%d);", name, mimeno);
  }

nomem:
  return ret;
}