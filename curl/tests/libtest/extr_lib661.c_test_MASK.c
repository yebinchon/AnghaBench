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
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLFTPMETHOD_NOCWD ; 
 scalar_t__ CURLFTPMETHOD_SINGLECWD ; 
 int /*<<< orphan*/  CURLOPT_FTP_FILEMETHOD ; 
 int /*<<< orphan*/  CURLOPT_IGNORE_CONTENT_LENGTH ; 
 int /*<<< orphan*/  CURLOPT_NOBODY ; 
 int /*<<< orphan*/  CURLOPT_QUOTE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC12(char *URL)
{
   CURLcode res;
   CURL *curl = NULL;
   char *newURL = NULL;
   struct curl_slist *slist = NULL;

   if(FUNC6(CURL_GLOBAL_ALL) != CURLE_OK) {
     FUNC9(stderr, "curl_global_init() failed\n");
     return TEST_ERR_MAJOR_BAD;
   }

   curl = FUNC2();
   if(!curl) {
     FUNC9(stderr, "curl_easy_init() failed\n");
     res = TEST_ERR_MAJOR_BAD;
     goto test_cleanup;
   }

   /* test: CURLFTPMETHOD_SINGLECWD with absolute path should
            skip CWD to entry path */
   newURL = FUNC0("%s/folderA/661", URL);
   FUNC11(curl, CURLOPT_URL, newURL);
   FUNC11(curl, CURLOPT_VERBOSE, 1L);
   FUNC11(curl, CURLOPT_IGNORE_CONTENT_LENGTH, 1L);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_SINGLECWD);
   res = FUNC3(curl);

   FUNC10(newURL);
   newURL = FUNC0("%s/folderB/661", URL);
   FUNC11(curl, CURLOPT_URL, newURL);
   res = FUNC3(curl);

   /* test: CURLFTPMETHOD_NOCWD with absolute path should
      never emit CWD (for both new and reused easy handle) */
   FUNC1(curl);
   curl = FUNC2();
   if(!curl) {
     FUNC9(stderr, "curl_easy_init() failed\n");
     res = TEST_ERR_MAJOR_BAD;
     goto test_cleanup;
   }

   FUNC10(newURL);
   newURL = FUNC0("%s/folderA/661", URL);
   FUNC11(curl, CURLOPT_URL, newURL);
   FUNC11(curl, CURLOPT_VERBOSE, 1L);
   FUNC11(curl, CURLOPT_IGNORE_CONTENT_LENGTH, 1L);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   res = FUNC3(curl);

   /* curve ball: CWD /folderB before reusing connection with _NOCWD */
   FUNC10(newURL);
   newURL = FUNC0("%s/folderB/661", URL);
   FUNC11(curl, CURLOPT_URL, newURL);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_SINGLECWD);
   res = FUNC3(curl);

   FUNC10(newURL);
   newURL = FUNC0("%s/folderA/661", URL);
   FUNC11(curl, CURLOPT_URL, newURL);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   res = FUNC3(curl);

   /* test: CURLFTPMETHOD_NOCWD with home-relative path should
      not emit CWD for first FTP access after login */
   FUNC1(curl);
   curl = FUNC2();
   if(!curl) {
     FUNC9(stderr, "curl_easy_init() failed\n");
     res = TEST_ERR_MAJOR_BAD;
     goto test_cleanup;
   }

   slist = FUNC7(NULL, "SYST");
   if(slist == NULL) {
     FUNC9(stderr, "curl_slist_append() failed\n");
     res = TEST_ERR_MAJOR_BAD;
     goto test_cleanup;
   }

   FUNC11(curl, CURLOPT_URL, URL);
   FUNC11(curl, CURLOPT_VERBOSE, 1L);
   FUNC11(curl, CURLOPT_NOBODY, 1L);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   FUNC11(curl, CURLOPT_QUOTE, slist);
   res = FUNC3(curl);

   /* test: CURLFTPMETHOD_SINGLECWD with home-relative path should
      not emit CWD for first FTP access after login */
   FUNC1(curl);
   curl = FUNC2();
   if(!curl) {
     FUNC9(stderr, "curl_easy_init() failed\n");
     res = TEST_ERR_MAJOR_BAD;
     goto test_cleanup;
   }

   FUNC11(curl, CURLOPT_URL, URL);
   FUNC11(curl, CURLOPT_VERBOSE, 1L);
   FUNC11(curl, CURLOPT_NOBODY, 1L);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_SINGLECWD);
   FUNC11(curl, CURLOPT_QUOTE, slist);
   res = FUNC3(curl);

   /* test: CURLFTPMETHOD_NOCWD with home-relative path should
      not emit CWD for second FTP access when not needed +
      bonus: see if path buffering survives curl_easy_reset() */
   FUNC4(curl);
   FUNC11(curl, CURLOPT_URL, URL);
   FUNC11(curl, CURLOPT_VERBOSE, 1L);
   FUNC11(curl, CURLOPT_NOBODY, 1L);
   FUNC11(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   FUNC11(curl, CURLOPT_QUOTE, slist);
   res = FUNC3(curl);


test_cleanup:

   FUNC8(slist);
   FUNC10(newURL);
   FUNC1(curl);
   FUNC5();

   return (int)res;
}