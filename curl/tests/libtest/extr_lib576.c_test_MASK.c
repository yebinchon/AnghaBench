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
typedef  char chunk_data_t ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OK ; 
 int CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLOPT_CHUNK_BGN_FUNCTION ; 
 int /*<<< orphan*/  CURLOPT_CHUNK_DATA ; 
 int /*<<< orphan*/  CURLOPT_CHUNK_END_FUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WILDCARDMATCH ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* chunk_bgn ; 
 char* chunk_end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC6(char *URL)
{
  CURL *handle = NULL;
  CURLcode res = CURLE_OK;
  chunk_data_t chunk_data = {0, 0};
  FUNC4(CURL_GLOBAL_ALL);
  handle = FUNC1();
  if(!handle) {
    res = CURLE_OUT_OF_MEMORY;
    goto test_cleanup;
  }

  FUNC5(handle, CURLOPT_URL, URL);
  FUNC5(handle, CURLOPT_WILDCARDMATCH, 1L);
  FUNC5(handle, CURLOPT_CHUNK_BGN_FUNCTION, chunk_bgn);
  FUNC5(handle, CURLOPT_CHUNK_END_FUNCTION, chunk_end);
  FUNC5(handle, CURLOPT_CHUNK_DATA, &chunk_data);

  res = FUNC2(handle);

test_cleanup:
  if(handle)
    FUNC0(handle);
  FUNC3();
  return res;
}