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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLAUTH_ANY ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPAUTH ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_IOCTLDATA ; 
 int /*<<< orphan*/  CURLOPT_IOCTLFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct stat*) ; 
 char* my_ioctl ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* read_callback ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char **argv)
{
  CURL *curl;
  CURLcode res;
  int hd;
  struct stat file_info;

  char *file;
  char *url;

  if(argc < 3)
    return 1;

  file = argv[1];
  url = argv[2];

  /* get the file size of the local file */
  hd = FUNC10(file, O_RDONLY);
  FUNC9(hd, &file_info);

  /* In windows, this will init the winsock stuff */
  FUNC7(CURL_GLOBAL_ALL);

  /* get a curl handle */
  curl = FUNC2();
  if(curl) {
    /* we want to use our own read function */
    FUNC4(curl, CURLOPT_READFUNCTION, read_callback);

    /* which file to upload */
    FUNC4(curl, CURLOPT_READDATA, (void *)&hd);

    /* set the ioctl function */
    FUNC4(curl, CURLOPT_IOCTLFUNCTION, my_ioctl);

    /* pass the file descriptor to the ioctl callback as well */
    FUNC4(curl, CURLOPT_IOCTLDATA, (void *)&hd);

    /* enable "uploading" (which means PUT when doing HTTP) */
    FUNC4(curl, CURLOPT_UPLOAD, 1L);

    /* specify target URL, and note that this URL should also include a file
       name, not only a directory (as you can do with GTP uploads) */
    FUNC4(curl, CURLOPT_URL, url);

    /* and give the size of the upload, this supports large file sizes
       on systems that have general support for it */
    FUNC4(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)file_info.st_size);

    /* tell libcurl we can use "any" auth, which lets the lib pick one, but it
       also costs one extra round-trip and possibly sending of all the PUT
       data twice!!! */
    FUNC4(curl, CURLOPT_HTTPAUTH, (long)CURLAUTH_ANY);

    /* set user name and password for the authentication */
    FUNC4(curl, CURLOPT_USERPWD, "user:password");

    /* Now run off and do what you've been told! */
    res = FUNC3(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC8(stderr, "curl_easy_perform() failed: %s\n",
              FUNC5(res));

    /* always cleanup */
    FUNC1(curl);
  }
  FUNC0(hd); /* close the local file */

  FUNC6();
  return 0;
}