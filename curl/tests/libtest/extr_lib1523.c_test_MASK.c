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
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OPERATION_TIMEDOUT ; 
 int /*<<< orphan*/  CURLOPT_ERRORBUFFER ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_XFERINFOFUNCTION ; 
 int CURL_ERROR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 long dload_progress_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 long write_cb ; 

int FUNC7(char *URL)
{
  CURLcode ret;
  CURL *hnd = FUNC1();
  char buffer[CURL_ERROR_SIZE];
  FUNC2(hnd, CURLOPT_URL, URL);
  FUNC2(hnd, CURLOPT_WRITEFUNCTION, write_cb);
  FUNC2(hnd, CURLOPT_ERRORBUFFER, buffer);
  FUNC2(hnd, CURLOPT_NOPROGRESS, 0L);
  FUNC2(hnd, CURLOPT_XFERINFOFUNCTION, dload_progress_cb);

  FUNC4("Start: %d\n", FUNC6(NULL));
  ret = FUNC5(hnd, 1, 2);
  if(ret)
    FUNC3(stderr, "error %d: %s\n", ret, buffer);

  ret = FUNC5(hnd, 12000, 1);
  if(ret != CURLE_OPERATION_TIMEDOUT)
    FUNC3(stderr, "error %d: %s\n", ret, buffer);
  else
    ret = 0;

  FUNC4("End: %d\n", FUNC6(NULL));
  FUNC0(hnd);

  return (int)ret;
}