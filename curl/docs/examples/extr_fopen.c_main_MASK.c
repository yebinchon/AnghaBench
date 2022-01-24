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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  URL_FILE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FGETSFILE ; 
 int /*<<< orphan*/  FREADFILE ; 
 int /*<<< orphan*/  REWINDFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 size_t FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(int argc, char *argv[])
{
  URL_FILE *handle;
  FILE *outf;

  size_t nread;
  char buffer[256];
  const char *url;

  if(argc < 2)
    url = "http://192.168.7.3/testfile";/* default to testurl */
  else
    url = argv[1];/* use passed url */

  /* copy from url line by line with fgets */
  outf = FUNC1(FGETSFILE, "wb+");
  if(!outf) {
    FUNC3("couldn't open fgets output file\n");
    return 1;
  }

  handle = FUNC9(url, "r");
  if(!handle) {
    FUNC4("couldn't url_fopen() %s\n", url);
    FUNC0(outf);
    return 2;
  }

  while(!FUNC7(handle)) {
    FUNC8(buffer, sizeof(buffer), handle);
    FUNC2(buffer, 1, FUNC5(buffer), outf);
  }

  FUNC6(handle);

  FUNC0(outf);


  /* Copy from url with fread */
  outf = FUNC1(FREADFILE, "wb+");
  if(!outf) {
    FUNC3("couldn't open fread output file\n");
    return 1;
  }

  handle = FUNC9("testfile", "r");
  if(!handle) {
    FUNC4("couldn't url_fopen() testfile\n");
    FUNC0(outf);
    return 2;
  }

  do {
    nread = FUNC10(buffer, 1, sizeof(buffer), handle);
    FUNC2(buffer, 1, nread, outf);
  } while(nread);

  FUNC6(handle);

  FUNC0(outf);


  /* Test rewind */
  outf = FUNC1(REWINDFILE, "wb+");
  if(!outf) {
    FUNC3("couldn't open fread output file\n");
    return 1;
  }

  handle = FUNC9("testfile", "r");
  if(!handle) {
    FUNC4("couldn't url_fopen() testfile\n");
    FUNC0(outf);
    return 2;
  }

  nread = FUNC10(buffer, 1, sizeof(buffer), handle);
  FUNC2(buffer, 1, nread, outf);
  FUNC11(handle);

  buffer[0]='\n';
  FUNC2(buffer, 1, 1, outf);

  nread = FUNC10(buffer, 1, sizeof(buffer), handle);
  FUNC2(buffer, 1, nread, outf);

  FUNC6(handle);

  FUNC0(outf);

  return 0;/* all done */
}