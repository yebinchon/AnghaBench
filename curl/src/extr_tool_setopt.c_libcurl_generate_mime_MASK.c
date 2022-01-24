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
struct TYPE_3__ {scalar_t__ subparts; } ;
typedef  TYPE_1__ tool_mime ;
struct GlobalConfig {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int easysrc_mime_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct GlobalConfig*,scalar_t__,int) ; 

__attribute__((used)) static CURLcode FUNC5(CURL *curl,
                                      struct GlobalConfig *config,
                                      tool_mime *toolmime,
                                      int *mimeno)
{
  CURLcode ret = CURLE_OK;

  /* May need several mime variables, so invent name. */
  *mimeno = ++easysrc_mime_count;
  FUNC3("curl_mime *mime%d;", *mimeno);
  FUNC2("mime%d = NULL;", *mimeno);
  FUNC1("mime%d = curl_mime_init(hnd);", *mimeno);
  FUNC0("curl_mime_free(mime%d);", *mimeno);
  FUNC0("mime%d = NULL;", *mimeno);

  if(toolmime->subparts) {
    FUNC3("curl_mimepart *part%d;", *mimeno);
    ret = FUNC4(curl, config,
                                     toolmime->subparts, *mimeno);
  }

nomem:
  return ret;
}