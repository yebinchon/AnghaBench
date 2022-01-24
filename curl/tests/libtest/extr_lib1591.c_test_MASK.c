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
typedef  char curl_slist ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_PUT ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_TRAILERDATA ; 
 int /*<<< orphan*/  CURLOPT_TRAILERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* read_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* trailers_callback ; 

int FUNC9(char *URL)
{
  CURL *curl = NULL;
  CURLcode res = CURLE_FAILED_INIT;
  /* http and proxy header list*/
  struct curl_slist *hhl = NULL;

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC7(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }


  curl = FUNC1();
  if(!curl) {
    FUNC7(stderr, "curl_easy_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  hhl = FUNC5(hhl, "Trailer: my-super-awesome-trailer,"
                               " my-other-awesome-trailer");
  if(!hhl) {
    goto test_cleanup;
  }

  FUNC8(curl, CURLOPT_URL, URL);
  FUNC8(curl, CURLOPT_HTTPHEADER, hhl);
  FUNC8(curl, CURLOPT_PUT, 1L);
  FUNC8(curl, CURLOPT_READFUNCTION, read_callback);
  FUNC8(curl, CURLOPT_TRAILERFUNCTION, trailers_callback);
  FUNC8(curl, CURLOPT_TRAILERDATA, NULL);

  res = FUNC2(curl);

test_cleanup:

  FUNC0(curl);

  FUNC6(hhl);

  FUNC3();

  return (int)res;
}