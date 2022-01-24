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
struct WriteThis {scalar_t__ sizeleft; int /*<<< orphan*/  readptr; } ;
typedef  long curl_off_t ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 long read_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
  CURL *curl;
  CURLcode res;

  struct WriteThis upload;

  upload.readptr = data;
  upload.sizeleft = FUNC8(data);

  /* In windows, this will init the winsock stuff */
  res = FUNC6(CURL_GLOBAL_DEFAULT);
  /* Check for errors */
  if(res != CURLE_OK) {
    FUNC7(stderr, "curl_global_init() failed: %s\n",
            FUNC4(res));
    return 1;
  }

  /* get a curl handle */
  curl = FUNC1();
  if(curl) {
    /* First set the URL, the target file */
    FUNC3(curl, CURLOPT_URL,
                     "ftp://example.com/path/to/upload/file");

    /* User and password for the FTP login */
    FUNC3(curl, CURLOPT_USERPWD, "login:secret");

    /* Now specify we want to UPLOAD data */
    FUNC3(curl, CURLOPT_UPLOAD, 1L);

    /* we want to use our own read function */
    FUNC3(curl, CURLOPT_READFUNCTION, read_callback);

    /* pointer to pass to our read function */
    FUNC3(curl, CURLOPT_READDATA, &upload);

    /* get verbose debug output please */
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    /* Set the expected upload size. */
    FUNC3(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)upload.sizeleft);

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }
  FUNC5();
  return 0;
}