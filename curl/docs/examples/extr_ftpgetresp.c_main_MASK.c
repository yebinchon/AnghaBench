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
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  FTPBODY ; 
 int /*<<< orphan*/  FTPHEADERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* write_response ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res;
  FILE *ftpfile;
  FILE *respfile;

  /* local file name to store the file as */
  ftpfile = FUNC6(FTPBODY, "wb"); /* b is binary, needed on win32 */

  /* local file name to store the FTP server's response lines in */
  respfile = FUNC6(FTPHEADERS, "wb"); /* b is binary, needed on win32 */

  curl = FUNC1();
  if(curl) {
    /* Get a file listing from sunet */
    FUNC3(curl, CURLOPT_URL, "ftp://ftp.example.com/");
    FUNC3(curl, CURLOPT_WRITEDATA, ftpfile);
    /* If you intend to use this on windows with a libcurl DLL, you must use
       CURLOPT_WRITEFUNCTION as well */
    FUNC3(curl, CURLOPT_HEADERFUNCTION, write_response);
    FUNC3(curl, CURLOPT_HEADERDATA, respfile);
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }

  FUNC5(ftpfile); /* close the local file */
  FUNC5(respfile); /* close the response file */

  return 0;
}