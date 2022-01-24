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
struct FtpFile {char* member_0; scalar_t__ stream; int /*<<< orphan*/ * member_1; } ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_SSH_AUTH_TYPES ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 long CURLSSH_AUTH_AGENT ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 long my_fwrite ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res;
  struct FtpFile ftpfile = {
    "yourfile.bin", /* name to store the file as if successful */
    NULL
  };

  FUNC5(CURL_GLOBAL_DEFAULT);

  curl = FUNC1();
  if(curl) {
    /*
     * You better replace the URL with one that works!
     */
    FUNC3(curl, CURLOPT_URL,
                     "sftp://user@server/home/user/file.txt");
    /* Define our callback to get called when there's data to be written */
    FUNC3(curl, CURLOPT_WRITEFUNCTION, my_fwrite);
    /* Set a pointer to our struct to pass to the callback */
    FUNC3(curl, CURLOPT_WRITEDATA, &ftpfile);

#ifndef DISABLE_SSH_AGENT
    /* We activate ssh agent. For this to work you need
       to have ssh-agent running (type set | grep SSH_AGENT to check) or
       pageant on Windows (there is an icon in systray if so) */
    FUNC3(curl, CURLOPT_SSH_AUTH_TYPES, CURLSSH_AUTH_AGENT);
#endif

    /* Switch on full protocol/debug output */
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    res = FUNC2(curl);

    /* always cleanup */
    FUNC0(curl);

    if(CURLE_OK != res) {
      /* we failed */
      FUNC7(stderr, "curl told us %d\n", res);
    }
  }

  if(ftpfile.stream)
    FUNC6(ftpfile.stream); /* close the local file */

  FUNC4();

  return 0;
}