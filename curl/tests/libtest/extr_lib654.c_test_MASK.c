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
struct WriteThis {int freecount; scalar_t__ sizeleft; int /*<<< orphan*/  readptr; } ;
typedef  scalar_t__ curl_off_t ;
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  char curl_mime ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int TEST_ERR_FAILURE ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct WriteThis*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct curl_slist*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 struct curl_slist* FUNC16 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  free_callback ; 
 int /*<<< orphan*/  read_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC20(char *URL)
{
  CURL *easy = NULL;
  CURL *easy2 = NULL;
  curl_mime *mime = NULL;
  curl_mimepart *part;
  struct curl_slist *hdrs = NULL;
  CURLcode result;
  int res = TEST_ERR_FAILURE;
  struct WriteThis pooh;

  /*
   * Check proper copy/release of mime post data bound to a duplicated
   * easy handle.
   */

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC17(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  easy = FUNC2();

  /* First set the URL that is about to receive our POST. */
  FUNC19(easy, CURLOPT_URL, URL);

  /* get verbose debug output please */
  FUNC19(easy, CURLOPT_VERBOSE, 1L);

  /* include headers in the output */
  FUNC19(easy, CURLOPT_HEADER, 1L);

  /* Prepare the callback structure. */
  pooh.readptr = data;
  pooh.sizeleft = (curl_off_t) FUNC18(data);
  pooh.freecount = 0;

  /* Build the mime tree. */
  mime = FUNC13(easy);
  part = FUNC6(mime);
  FUNC7(part, "hello", CURL_ZERO_TERMINATED);
  FUNC14(part, "greeting");
  FUNC15(part, "application/X-Greeting");
  FUNC9(part, "base64");
  hdrs = FUNC16(hdrs, "X-Test-Number: 654");
  FUNC12(part, hdrs, TRUE);
  part = FUNC6(mime);
  FUNC10(part, "log/file654.txt");
  part = FUNC6(mime);
  FUNC8(part, (curl_off_t) -1, read_callback, NULL, free_callback,
                    &pooh);

  /* Bind mime data to its easy handle. */
  FUNC19(easy, CURLOPT_MIMEPOST, mime);

  /* Duplicate the handle. */
  easy2 = FUNC1(easy);
  if(!easy2) {
    FUNC17(stderr, "curl_easy_duphandle() failed\n");
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

  /* Now free the mime structure: it should unbind it from the first
     easy handle. */
  FUNC11(mime);
  mime = NULL;  /* Already cleaned up. */

  /* Perform on the first handle: should not send any data. */
  result = FUNC3(easy);
  if(result) {
    FUNC17(stderr, "curl_easy_perform(original) failed\n");
    res = (int) result;
    goto test_cleanup;
  }

  /* Perform on the second handle: if the bound mime structure has not been
     duplicated properly, it should cause a valgrind error. */
  result = FUNC3(easy2);
  if(result) {
    FUNC17(stderr, "curl_easy_perform(duplicated) failed\n");
    res = (int) result;
    goto test_cleanup;
  }

  /* Free the duplicated handle: it should call free_callback again.
     If the mime copy was bad or not automatically released, valgrind
     will signal it. */
  FUNC0(easy2);
  easy2 = NULL;  /* Already cleaned up. */

  if(pooh.freecount != 2) {
    FUNC17(stderr, "free_callback() called %d times instead of 2\n",
            pooh.freecount);
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:
  FUNC0(easy);
  FUNC0(easy2);
  FUNC11(mime);
  FUNC4();
  return res;
}