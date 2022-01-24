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
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* write_data ; 

int FUNC9(int argc, char *argv[])
{
  CURL *curl_handle;
  static const char *pagefilename = "page.out";
  FILE *pagefile;

  if(argc < 2) {
    FUNC8("Usage: %s <URL>\n", argv[0]);
    return 1;
  }

  FUNC5(CURL_GLOBAL_ALL);

  /* init the curl session */
  curl_handle = FUNC1();

  /* set URL to get here */
  FUNC3(curl_handle, CURLOPT_URL, argv[1]);

  /* Switch on full protocol/debug output while testing */
  FUNC3(curl_handle, CURLOPT_VERBOSE, 1L);

  /* disable progress meter, set to 0L to enable and disable debug output */
  FUNC3(curl_handle, CURLOPT_NOPROGRESS, 1L);

  /* send all data to this function  */
  FUNC3(curl_handle, CURLOPT_WRITEFUNCTION, write_data);

  /* open the file */
  pagefile = FUNC7(pagefilename, "wb");
  if(pagefile) {

    /* write the page body to this file handle */
    FUNC3(curl_handle, CURLOPT_WRITEDATA, pagefile);

    /* get it! */
    FUNC2(curl_handle);

    /* close the header file */
    FUNC6(pagefile);
  }

  /* cleanup curl stuff */
  FUNC0(curl_handle);

  FUNC4();

  return 0;
}