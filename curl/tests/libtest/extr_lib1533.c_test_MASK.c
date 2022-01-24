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
struct cb_data {scalar_t__ remaining_bytes; } ;
typedef  long curl_off_t ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_KEEP_SENDING_ON_ERROR ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 scalar_t__ TEST_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 long read_callback ; 
 int /*<<< orphan*/  FUNC6 (struct cb_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 long write_callback ; 

int FUNC8(char *URL)
{
  struct cb_data data;
  CURL *curl = NULL;
  CURLcode res = CURLE_FAILED_INIT;

  if(FUNC3(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC4(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC1();
  if(curl == NULL) {
    FUNC4(stderr, "curl_easy_init() failed\n");
    FUNC2();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC6(&data, curl);

  FUNC7(curl, CURLOPT_URL, URL);
  FUNC7(curl, CURLOPT_POST, 1L);
  FUNC7(curl, CURLOPT_POSTFIELDSIZE_LARGE,
              (curl_off_t)data.remaining_bytes);
  FUNC7(curl, CURLOPT_VERBOSE, 1L);
  FUNC7(curl, CURLOPT_READFUNCTION, read_callback);
  FUNC7(curl, CURLOPT_READDATA, &data);
  FUNC7(curl, CURLOPT_WRITEFUNCTION, write_callback);
  FUNC7(curl, CURLOPT_WRITEDATA, &data);

  res = FUNC5(curl,
    "First request without CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  FUNC6(&data, curl);

  res = FUNC5(curl,
    "Second request without CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  FUNC7(curl, CURLOPT_KEEP_SENDING_ON_ERROR, 1L);

  FUNC6(&data, curl);

  res = FUNC5(curl,
    "First request with CURLOPT_KEEP_SENDING_ON_ERROR", 1);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  FUNC6(&data, curl);

  res = FUNC5(curl,
    "Second request with CURLOPT_KEEP_SENDING_ON_ERROR", 0);
  if(res != TEST_ERR_SUCCESS) {
    goto test_cleanup;
  }

  res = TEST_ERR_SUCCESS;

test_cleanup:

  FUNC0(curl);

  FUNC2();

  return (int)res;
}