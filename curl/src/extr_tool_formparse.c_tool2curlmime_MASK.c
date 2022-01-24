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
struct TYPE_3__ {int /*<<< orphan*/  subparts; } ;
typedef  TYPE_1__ tool_mime ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

CURLcode FUNC3(CURL *curl, tool_mime *m, curl_mime **mime)
{
  CURLcode ret = CURLE_OK;

  *mime = FUNC1(curl);
  if(!*mime)
    ret = CURLE_OUT_OF_MEMORY;
  else
    ret = FUNC2(curl, m->subparts, *mime);
  if(ret) {
    FUNC0(*mime);
    *mime = NULL;
  }
  return ret;
}