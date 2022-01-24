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
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_GOT_NOTHING ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_APPEND ; 
 int /*<<< orphan*/  CURLOPT_FTPPORT ; 
 int /*<<< orphan*/  CURLOPT_FTP_CREATE_MISSING_DIRS ; 
 int /*<<< orphan*/  CURLOPT_FTP_RESPONSE_TIMEOUT ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_NOBODY ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC2 (scalar_t__) ; 
 long discardfunc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long getcontentlengthfunc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 long readfunc ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(CURL *curlhandle, const char *remotepath,
                  const char *localpath, long timeout, long tries)
{
  FILE *f;
  long uploaded_len = 0;
  CURLcode r = CURLE_GOT_NOTHING;
  int c;

  f = FUNC4(localpath, "rb");
  if(!f) {
    FUNC7(NULL);
    return 0;
  }

  FUNC1(curlhandle, CURLOPT_UPLOAD, 1L);

  FUNC1(curlhandle, CURLOPT_URL, remotepath);

  if(timeout)
    FUNC1(curlhandle, CURLOPT_FTP_RESPONSE_TIMEOUT, timeout);

  FUNC1(curlhandle, CURLOPT_HEADERFUNCTION, getcontentlengthfunc);
  FUNC1(curlhandle, CURLOPT_HEADERDATA, &uploaded_len);

  FUNC1(curlhandle, CURLOPT_WRITEFUNCTION, discardfunc);

  FUNC1(curlhandle, CURLOPT_READFUNCTION, readfunc);
  FUNC1(curlhandle, CURLOPT_READDATA, f);

  /* disable passive mode */
  FUNC1(curlhandle, CURLOPT_FTPPORT, "-");
  FUNC1(curlhandle, CURLOPT_FTP_CREATE_MISSING_DIRS, 1L);

  FUNC1(curlhandle, CURLOPT_VERBOSE, 1L);

  for(c = 0; (r != CURLE_OK) && (c < tries); c++) {
    /* are we resuming? */
    if(c) { /* yes */
      /* determine the length of the file already written */

      /*
       * With NOBODY and NOHEADER, libcurl will issue a SIZE
       * command, but the only way to retrieve the result is
       * to parse the returned Content-Length header. Thus,
       * getcontentlengthfunc(). We need discardfunc() above
       * because HEADER will dump the headers to stdout
       * without it.
       */
      FUNC1(curlhandle, CURLOPT_NOBODY, 1L);
      FUNC1(curlhandle, CURLOPT_HEADER, 1L);

      r = FUNC0(curlhandle);
      if(r != CURLE_OK)
        continue;

      FUNC1(curlhandle, CURLOPT_NOBODY, 0L);
      FUNC1(curlhandle, CURLOPT_HEADER, 0L);

      FUNC6(f, uploaded_len, SEEK_SET);

      FUNC1(curlhandle, CURLOPT_APPEND, 1L);
    }
    else { /* no */
      FUNC1(curlhandle, CURLOPT_APPEND, 0L);
    }

    r = FUNC0(curlhandle);
  }

  FUNC3(f);

  if(r == CURLE_OK)
    return 1;
  else {
    FUNC5(stderr, "%s\n", FUNC2(r));
    return 0;
  }
}