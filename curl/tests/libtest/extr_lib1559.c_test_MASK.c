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
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLUPART_SCHEME ; 
 int /*<<< orphan*/  CURLUPART_URL ; 
 int /*<<< orphan*/  CURLUPART_USER ; 
 int /*<<< orphan*/  CURLU_NON_SUPPORT_SCHEME ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int EXCESSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 

int FUNC12(char *URL)
{
  CURLcode res = 0;
  CURL *curl = NULL;
  char *longurl = FUNC9(EXCESSIVE);
  CURLU *u;
  (void)URL;

  FUNC10(longurl, 'a', EXCESSIVE);
  longurl[EXCESSIVE-1] = 0;

  FUNC8(CURL_GLOBAL_ALL);
  FUNC6(curl);

  res = FUNC1(curl, CURLOPT_URL, longurl);
  FUNC11("CURLOPT_URL %d bytes URL == %d\n",
         EXCESSIVE, (int)res);

  res = FUNC1(curl, CURLOPT_POSTFIELDS, longurl);
  FUNC11("CURLOPT_POSTFIELDS %d bytes data == %d\n",
         EXCESSIVE, (int)res);

  u = FUNC3();
  if(u) {
    CURLUcode uc = FUNC5(u, CURLUPART_URL, longurl, 0);
    FUNC11("CURLUPART_URL %d bytes URL == %d\n",
           EXCESSIVE, (int)uc);
    uc = FUNC5(u, CURLUPART_SCHEME, longurl, CURLU_NON_SUPPORT_SCHEME);
    FUNC11("CURLUPART_SCHEME %d bytes scheme == %d\n",
           EXCESSIVE, (int)uc);
    uc = FUNC5(u, CURLUPART_USER, longurl, 0);
    FUNC11("CURLUPART_USER %d bytes user == %d\n",
           EXCESSIVE, (int)uc);
    FUNC4(u);
  }

  FUNC7(longurl);

  FUNC0(curl);
  FUNC2();

  return 0;

test_cleanup:

  FUNC0(curl);
  FUNC2();

  return res; /* return the final return code */
}