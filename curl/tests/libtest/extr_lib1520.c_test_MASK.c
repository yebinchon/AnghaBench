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
struct upload_status {int /*<<< orphan*/  member_0; } ;
struct curl_slist {int dummy; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 long FROM ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 long read_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC9(char *URL)
{
  CURLcode res;
  CURL *curl;
  struct curl_slist *rcpt_list = NULL;
  struct upload_status upload_ctx = {0};

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

  rcpt_list = FUNC5(rcpt_list, TO);
  /* more addresses can be added here
     rcpt_list = curl_slist_append(rcpt_list, "<others@example.com>");
  */

  FUNC8(curl, CURLOPT_URL, URL);
  FUNC8(curl, CURLOPT_UPLOAD, 1L);
  FUNC8(curl, CURLOPT_READFUNCTION, read_callback);
  FUNC8(curl, CURLOPT_READDATA, &upload_ctx);
  FUNC8(curl, CURLOPT_MAIL_FROM, FROM);
  FUNC8(curl, CURLOPT_MAIL_RCPT, rcpt_list);
  FUNC8(curl, CURLOPT_VERBOSE, 1L);

  res = FUNC2(curl);

test_cleanup:

  FUNC6(rcpt_list);
  FUNC0(curl);
  FUNC3();

  return (int)res;
}