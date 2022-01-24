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
struct stat {scalar_t__ st_size; } ;
typedef  char* curl_off_t ;
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_PUT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 char* read_callback ; 
 int /*<<< orphan*/  FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char **argv)
{
  CURL *curl;
  CURLcode res;
  FILE * hd_src;
  struct stat file_info;

  char *file;
  char *url;

  if(argc < 3)
    return 1;

  file = argv[1];
  url = argv[2];

  /* get the file size of the local file */
  FUNC10(file, &file_info);

  /* get a FILE * of the same file, could also be made with
     fdopen() from the previous descriptor, but hey this is just
     an example! */
  hd_src = FUNC8(file, "rb");

  /* In windows, this will init the winsock stuff */
  FUNC6(CURL_GLOBAL_ALL);

  /* get a curl handle */
  curl = FUNC1();
  if(curl) {
    /* we want to use our own read function */
    FUNC3(curl, CURLOPT_READFUNCTION, read_callback);

    /* enable uploading */
    FUNC3(curl, CURLOPT_UPLOAD, 1L);

    /* HTTP PUT please */
    FUNC3(curl, CURLOPT_PUT, 1L);

    /* specify target URL, and note that this URL should include a file
       name, not only a directory */
    FUNC3(curl, CURLOPT_URL, url);

    /* now specify which file to upload */
    FUNC3(curl, CURLOPT_READDATA, hd_src);

    /* provide the size of the upload, we specicially typecast the value
       to curl_off_t since we must be sure to use the correct data size */
    FUNC3(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)file_info.st_size);

    /* Now run off and do what you've been told! */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC9(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }
  FUNC7(hd_src); /* close the local file */

  FUNC5();
  return 0;
}