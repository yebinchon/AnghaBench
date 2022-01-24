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
typedef  int /*<<< orphan*/  weare ;
struct testcase {size_t bufsize; size_t rcount; long testno; scalar_t__ buffer; scalar_t__ rptr; } ;
typedef  int /*<<< orphan*/  partbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCESS ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (scalar_t__*,size_t*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 size_t FUNC6 (char*,int,char*,long) ; 
 int /*<<< orphan*/  FUNC7 (struct testcase*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 char* FUNC11 (char const*,char) ; 
 long FUNC12 (char*,char**,int) ; 
 char* FUNC13 (long) ; 

__attribute__((used)) static int FUNC14(struct testcase *test,
                           const char *filename, int mode)
{
  char *ptr;

  FUNC5("trying to get file: %s mode %x", filename, mode);

  if(!FUNC10("verifiedserver", filename, 14)) {
    char weare[128];
    size_t count = FUNC6(weare, sizeof(weare),
                             "WE ROOLZ: %ld\r\n", (long)FUNC4());

    FUNC5("Are-we-friendly question received");
    test->buffer = FUNC8(weare);
    test->rptr = test->buffer; /* set read pointer */
    test->bufsize = count;    /* set total count */
    test->rcount = count;     /* set data left to read */
    return 0; /* fine */
  }

  /* find the last slash */
  ptr = FUNC11(filename, '/');

  if(ptr) {
    char partbuf[80]="data";
    long partno;
    long testno;
    char *file;

    ptr++; /* skip the slash */

    /* skip all non-numericals following the slash */
    while(*ptr && !FUNC0(*ptr))
      ptr++;

    /* get the number */
    testno = FUNC12(ptr, &ptr, 10);

    if(testno > 10000) {
      partno = testno % 10000;
      testno /= 10000;
    }
    else
      partno = 0;


    FUNC5("requested test number %ld part %ld", testno, partno);

    test->testno = testno;

    (void)FUNC7(test);

    file = FUNC13(testno);

    if(0 != partno)
      FUNC6(partbuf, sizeof(partbuf), "data%ld", partno);

    if(file) {
      FILE *stream = FUNC2(file, "rb");
      if(!stream) {
        int error = errno;
        FUNC5("fopen() failed with error: %d %s", error, FUNC9(error));
        FUNC5("Error opening file: %s", file);
        FUNC5("Couldn't open test file: %s", file);
        return EACCESS;
      }
      else {
        size_t count;
        int error = FUNC3(&test->buffer, &count, "reply", partbuf, stream);
        FUNC1(stream);
        if(error) {
          FUNC5("getpart() failed with error: %d", error);
          return EACCESS;
        }
        if(test->buffer) {
          test->rptr = test->buffer; /* set read pointer */
          test->bufsize = count;    /* set total count */
          test->rcount = count;     /* set data left to read */
        }
        else
          return EACCESS;
      }

    }
    else
      return EACCESS;
  }
  else {
    FUNC5("no slash found in path");
    return EACCESS; /* failure */
  }

  FUNC5("file opened and all is good");
  return 0;
}