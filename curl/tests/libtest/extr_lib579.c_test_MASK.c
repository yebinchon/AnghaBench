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
struct WriteThis {scalar_t__ counter; } ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLAUTH_DIGEST ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HTTPAUTH ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_TRANSFERTEXT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 long progress_callback ; 
 long read_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC9(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct curl_slist *slist = NULL;
  struct WriteThis pooh;
  pooh.counter = 0;

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

  slist = FUNC5(slist, "Transfer-Encoding: chunked");
  if(slist == NULL) {
    FUNC7(stderr, "curl_slist_append() failed\n");
    FUNC0(curl);
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  /* First set the URL that is about to receive our POST. */
  FUNC8(curl, CURLOPT_URL, URL);

  /* Now specify we want to POST data */
  FUNC8(curl, CURLOPT_POST, 1L);

#ifdef CURL_DOES_CONVERSIONS
  /* Convert the POST data to ASCII */
  test_setopt(curl, CURLOPT_TRANSFERTEXT, 1L);
#endif

  /* we want to use our own read function */
  FUNC8(curl, CURLOPT_READFUNCTION, read_callback);

  /* pointer to pass to our read function */
  FUNC8(curl, CURLOPT_READDATA, &pooh);

  /* get verbose debug output please */
  FUNC8(curl, CURLOPT_VERBOSE, 1L);

  /* include headers in the output */
  FUNC8(curl, CURLOPT_HEADER, 1L);

  /* enforce chunked transfer by setting the header */
  FUNC8(curl, CURLOPT_HTTPHEADER, slist);

  FUNC8(curl, CURLOPT_HTTPAUTH, (long)CURLAUTH_DIGEST);
  FUNC8(curl, CURLOPT_USERPWD, "foo:bar");

  /* we want to use our own progress function */
  FUNC8(curl, CURLOPT_NOPROGRESS, 0L);
  FUNC8(curl, CURLOPT_PROGRESSFUNCTION, progress_callback);

  /* Perform the request, res will get the return code */
  res = FUNC2(curl);

test_cleanup:

  /* clean up the headers list */
  if(slist)
    FUNC6(slist);

  /* always cleanup */
  FUNC0(curl);
  FUNC3();

  return res;
}