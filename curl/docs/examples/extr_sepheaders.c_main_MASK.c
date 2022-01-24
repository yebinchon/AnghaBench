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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char*) ; 
 char* write_data ; 

int FUNC7(void)
{
  CURL *curl_handle;
  static const char *headerfilename = "head.out";
  FILE *headerfile;
  static const char *bodyfilename = "body.out";
  FILE *bodyfile;

  FUNC4(CURL_GLOBAL_ALL);

  /* init the curl session */
  curl_handle = FUNC1();

  /* set URL to get */
  FUNC3(curl_handle, CURLOPT_URL, "https://example.com");

  /* no progress meter please */
  FUNC3(curl_handle, CURLOPT_NOPROGRESS, 1L);

  /* send all data to this function  */
  FUNC3(curl_handle, CURLOPT_WRITEFUNCTION, write_data);

  /* open the header file */
  headerfile = FUNC6(headerfilename, "wb");
  if(!headerfile) {
    FUNC0(curl_handle);
    return -1;
  }

  /* open the body file */
  bodyfile = FUNC6(bodyfilename, "wb");
  if(!bodyfile) {
    FUNC0(curl_handle);
    FUNC5(headerfile);
    return -1;
  }

  /* we want the headers be written to this file handle */
  FUNC3(curl_handle, CURLOPT_HEADERDATA, headerfile);

  /* we want the body be written to this file handle instead of stdout */
  FUNC3(curl_handle, CURLOPT_WRITEDATA, bodyfile);

  /* get it! */
  FUNC2(curl_handle);

  /* close the header file */
  FUNC5(headerfile);

  /* close the body file */
  FUNC5(bodyfile);

  /* cleanup curl stuff */
  FUNC0(curl_handle);

  return 0;
}