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
struct testcase {char* testno; int writedelay; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,char*,int*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct testcase *req)
{
  FILE *stream;
  char *filename;
  int error;

  filename = FUNC8(req->testno);

  stream = FUNC1(filename, "rb");
  if(!stream) {
    error = errno;
    FUNC4("fopen() failed with error: %d %s", error, FUNC7(error));
    FUNC4("  [1] Error opening file: %s", filename);
    FUNC4("  Couldn't open test file %ld", req->testno);
    return 1; /* done */
  }
  else {
    char *orgcmd = NULL;
    char *cmd = NULL;
    size_t cmdsize = 0;
    int num = 0;

    /* get the custom server control "commands" */
    error = FUNC3(&orgcmd, &cmdsize, "reply", "servercmd", stream);
    FUNC0(stream);
    if(error) {
      FUNC4("getpart() failed with error: %d", error);
      return 1; /* done */
    }

    cmd = orgcmd;
    while(cmd && cmdsize) {
      char *check;
      if(1 == FUNC5(cmd, "writedelay: %d", &num)) {
        FUNC4("instructed to delay %d secs between packets", num);
        req->writedelay = num;
      }
      else {
        FUNC4("Unknown <servercmd> instruction found: %s", cmd);
      }
      /* try to deal with CRLF or just LF */
      check = FUNC6(cmd, '\r');
      if(!check)
        check = FUNC6(cmd, '\n');

      if(check) {
        /* get to the letter following the newline */
        while((*check == '\r') || (*check == '\n'))
          check++;

        if(!*check)
          /* if we reached a zero, get out */
          break;
        cmd = check;
      }
      else
        break;
    }
    FUNC2(orgcmd);
  }

  return 0; /* OK! */
}