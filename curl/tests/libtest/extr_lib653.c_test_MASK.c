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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(char *URL)
{
  CURL *curls = NULL;
  int res = 0;
  curl_mimepart *field = NULL;
  curl_mime *mime = NULL;

  FUNC10(CURL_GLOBAL_ALL);
  FUNC8(curls);

  mime = FUNC6(curls);
  field = FUNC3(mime);
  FUNC7(field, "name");
  FUNC4(field, "short value", CURL_ZERO_TERMINATED);

  FUNC9(curls, CURLOPT_URL, URL);
  FUNC9(curls, CURLOPT_HEADER, 1L);
  FUNC9(curls, CURLOPT_VERBOSE, 1L);
  FUNC9(curls, CURLOPT_MIMEPOST, mime);
  FUNC9(curls, CURLOPT_NOPROGRESS, 1L);

  res = FUNC1(curls);
  if(res)
    goto test_cleanup;

  /* Alter form and resubmit. */
  FUNC4(field, "long value for length change", CURL_ZERO_TERMINATED);
  res = FUNC1(curls);

test_cleanup:
  FUNC5(mime);
  FUNC0(curls);
  FUNC2();
  return (int) res; /* return the final return code */
}