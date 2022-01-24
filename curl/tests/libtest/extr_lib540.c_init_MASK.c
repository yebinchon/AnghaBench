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
typedef  char const curl_slist ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 scalar_t__ CURLAUTH_ANY ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYAUTH ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERPWD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 char const* PROXY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** eh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int num, CURLM *cm, const char *url, const char *userpwd,
                struct curl_slist *headers)
{
  int res = 0;

  FUNC1(eh[num]);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_URL, url);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_PROXY, PROXY);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_PROXYUSERPWD, userpwd);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_PROXYAUTH, (long)CURLAUTH_ANY);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_VERBOSE, 1L);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_HEADER, 1L);
  if(res)
    goto init_failed;

  FUNC2(eh[num], CURLOPT_HTTPHEADER, headers); /* custom Host: */
  if(res)
    goto init_failed;

  FUNC3(cm, eh[num]);
  if(res)
    goto init_failed;

  return 0; /* success */

init_failed:

  FUNC0(eh[num]);
  eh[num] = NULL;

  return res; /* failure */
}