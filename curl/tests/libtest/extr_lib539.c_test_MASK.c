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
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLFTPMETHOD_NOCWD ; 
 scalar_t__ CURLFTPMETHOD_SINGLECWD ; 
 int /*<<< orphan*/  CURLOPT_FTP_FILEMETHOD ; 
 int /*<<< orphan*/  CURLOPT_QUOTE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int FUNC11(char *URL)
{
   CURLcode res;
   CURL *curl;
   char *newURL = NULL;
   struct curl_slist *slist = NULL;

   if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
     FUNC8(stderr, "curl_global_init() failed\n");
     return TEST_ERR_MAJOR_BAD;
   }

   curl = FUNC2();
   if(!curl) {
     FUNC8(stderr, "curl_easy_init() failed\n");
     FUNC4();
     return TEST_ERR_MAJOR_BAD;
   }

   /*
    * Begin with curl set to use a single CWD to the URL's directory.
    */
   FUNC10(curl, CURLOPT_URL, URL);
   FUNC10(curl, CURLOPT_VERBOSE, 1L);
   FUNC10(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_SINGLECWD);

   res = FUNC3(curl);

   /*
    * Change the FTP_FILEMETHOD option to use full paths rather than a CWD
    * command.  Alter the URL's path a bit, appending a "./".  Use an innocuous
    * QUOTE command, after which curl will CWD to ftp_conn->entrypath and then
    * (on the next call to ftp_statemach_act) find a non-zero ftpconn->dirdepth
    * even though no directories are stored in the ftpconn->dirs array (after a
    * call to freedirs).
    */
   newURL = FUNC0("%s./", URL);
   if(newURL == NULL) {
     FUNC1(curl);
     FUNC4();
     return TEST_ERR_MAJOR_BAD;
   }

   slist = FUNC6(NULL, "SYST");
   if(slist == NULL) {
     FUNC9(newURL);
     FUNC1(curl);
     FUNC4();
     return TEST_ERR_MAJOR_BAD;
   }

   FUNC10(curl, CURLOPT_URL, newURL);
   FUNC10(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   FUNC10(curl, CURLOPT_QUOTE, slist);

   res = FUNC3(curl);

test_cleanup:

   FUNC7(slist);
   FUNC9(newURL);
   FUNC1(curl);
   FUNC4();

   return (int)res;
}