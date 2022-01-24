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
struct WriteThis {void* sizeleft; void* readptr; } ;
typedef  void* curl_off_t ;
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct WriteThis*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 void* data ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  read_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC16(char *URL, bool oldstyle)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl_mime *mime = NULL;
  curl_mimepart *part = NULL;
  struct WriteThis pooh;
  struct WriteThis pooh2;
  curl_off_t datasize = -1;

  pooh.readptr = data;
#ifndef LIB645
  datasize = (curl_off_t)FUNC14(data);
#endif
  pooh.sizeleft = datasize;

  curl = FUNC1();
  if(!curl) {
    FUNC12(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  mime = FUNC10(curl);
  if(!mime) {
    FUNC12(stderr, "curl_mime_init() failed\n");
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  part = FUNC5(mime);
  if(!part) {
    FUNC12(stderr, "curl_mime_addpart(1) failed\n");
    FUNC9(mime);
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  /* Fill in the file upload part */
  if(oldstyle) {
    res = FUNC11(part, "sendfile");
    if(!res)
      res = FUNC7(part, datasize, read_callback,
                              NULL, NULL, &pooh);
    if(!res)
      res = FUNC8(part, "postit2.c");
  }
  else {
    /* new style */
    res = FUNC11(part, "sendfile alternative");
    if(!res)
      res = FUNC7(part, datasize, read_callback,
                              NULL, NULL, &pooh);
    if(!res)
      res = FUNC8(part, "file name 2");
  }

  if(res)
    FUNC13("curl_mime_xxx(1) = %s\n", FUNC3(res));

  /* Now add the same data with another name and make it not look like
     a file upload but still using the callback */

  pooh2.readptr = data;
#ifndef LIB645
  datasize = (curl_off_t)FUNC14(data);
#endif
  pooh2.sizeleft = datasize;

  part = FUNC5(mime);
  if(!part) {
    FUNC12(stderr, "curl_mime_addpart(2) failed\n");
    FUNC9(mime);
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }
  /* Fill in the file upload part */
  res = FUNC11(part, "callbackdata");
  if(!res)
    res = FUNC7(part, datasize, read_callback,
                            NULL, NULL, &pooh2);

  if(res)
    FUNC13("curl_mime_xxx(2) = %s\n", FUNC3(res));

  part = FUNC5(mime);
  if(!part) {
    FUNC12(stderr, "curl_mime_addpart(3) failed\n");
    FUNC9(mime);
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  /* Fill in the filename field */
  res = FUNC11(part, "filename");
  if(!res)
    res = FUNC6(part,
#ifdef CURL_DOES_CONVERSIONS
                         /* ASCII representation with escape
                            sequences for non-ASCII platforms */
                         "\x70\x6f\x73\x74\x69\x74\x32\x2e\x63",
#else
                          "postit2.c",
#endif
                          CURL_ZERO_TERMINATED);

  if(res)
    FUNC13("curl_mime_xxx(3) = %s\n", FUNC3(res));

  /* Fill in a submit field too */
  part = FUNC5(mime);
  if(!part) {
    FUNC12(stderr, "curl_mime_addpart(4) failed\n");
    FUNC9(mime);
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }
  res = FUNC11(part, "submit");
  if(!res)
    res = FUNC6(part,
#ifdef CURL_DOES_CONVERSIONS
                         /* ASCII representation with escape
                            sequences for non-ASCII platforms */
                         "\x73\x65\x6e\x64",
#else
                          "send",
#endif
                          CURL_ZERO_TERMINATED);

  if(res)
    FUNC13("curl_mime_xxx(4) = %s\n", FUNC3(res));

  part = FUNC5(mime);
  if(!part) {
    FUNC12(stderr, "curl_mime_addpart(5) failed\n");
    FUNC9(mime);
    FUNC0(curl);
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }
  res = FUNC11(part, "somename");
  if(!res)
    res = FUNC8(part, "somefile.txt");
  if(!res)
    res = FUNC6(part, "blah blah", 9);

  if(res)
    FUNC13("curl_mime_xxx(5) = %s\n", FUNC3(res));

  /* First set the URL that is about to receive our POST. */
  FUNC15(curl, CURLOPT_URL, URL);

  /* send a multi-part mimepost */
  FUNC15(curl, CURLOPT_MIMEPOST, mime);

  /* get verbose debug output please */
  FUNC15(curl, CURLOPT_VERBOSE, 1L);

  /* include headers in the output */
  FUNC15(curl, CURLOPT_HEADER, 1L);

  /* Perform the request, res will get the return code */
  res = FUNC2(curl);

test_cleanup:

  /* always cleanup */
  FUNC0(curl);

  /* now cleanup the mimepost structure */
  FUNC9(mime);

  return res;
}