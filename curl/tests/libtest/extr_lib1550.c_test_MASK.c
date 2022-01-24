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
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int CURLE_OK ; 
 int /*<<< orphan*/  CURLMOPT_PIPELINING_SERVER_BL ; 
 int /*<<< orphan*/  CURLMOPT_PIPELINING_SITE_BL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const* const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(char *URL)
{
  CURLM *handle;
  int res = CURLE_OK;
  static const char * const bl_servers[] =
     {"Microsoft-IIS/6.0", "nginx/0.8.54", NULL};
  static const char * const bl_sites[] =
     {"curl.haxx.se:443", "example.com:80", NULL};

  FUNC4(CURL_GLOBAL_ALL);
  handle = FUNC2();
  (void)URL; /* unused */

  FUNC3(handle, CURLMOPT_PIPELINING_SERVER_BL, bl_servers);
  FUNC3(handle, CURLMOPT_PIPELINING_SITE_BL, bl_sites);
  FUNC1(handle);
  FUNC0();
  return 0;
}