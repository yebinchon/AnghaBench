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
typedef  int curl_off_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_GOT_NOTHING ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_APPEND ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 long readfunc ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(CURL *curlhandle, const char *remotepath,
                            const char *localpath)
{
  FILE *f = NULL;
  CURLcode result = CURLE_GOT_NOTHING;

  curl_off_t remoteFileSizeByte = FUNC10(remotepath);
  if(-1 == remoteFileSizeByte) {
    FUNC9("Error reading the remote file size: unable to resume upload\n");
    return -1;
  }

  f = FUNC5(localpath, "rb");
  if(!f) {
    FUNC8(NULL);
    return 0;
  }

  FUNC2(curlhandle, CURLOPT_UPLOAD, 1L);
  FUNC2(curlhandle, CURLOPT_URL, remotepath);
  FUNC2(curlhandle, CURLOPT_READFUNCTION, readfunc);
  FUNC2(curlhandle, CURLOPT_READDATA, f);

#ifdef _WIN32
  _fseeki64(f, remoteFileSizeByte, SEEK_SET);
#else
  FUNC7(f, (long)remoteFileSizeByte, SEEK_SET);
#endif
  FUNC2(curlhandle, CURLOPT_APPEND, 1L);
  result = FUNC1(curlhandle);

  FUNC4(f);

  if(result == CURLE_OK)
    return 1;
  else {
    FUNC6(stderr, "%s\n", FUNC3(result));
    return 0;
  }
}