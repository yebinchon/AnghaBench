#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {int dummy; } ;
struct OperationConfig {TYPE_1__* global; } ;
typedef  int /*<<< orphan*/  hdrbuf ;
struct TYPE_2__ {int /*<<< orphan*/  errors; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EOF 128 
 int FALSE ; 
 scalar_t__ FUNC0 (char) ; 
 int TRUE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct curl_slist**,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char const*,int) ; 

__attribute__((used)) static int FUNC7(struct OperationConfig *config,
                              const char *filename, FILE *fp,
                              struct curl_slist **pheaders)
{
  size_t hdrlen = 0;
  size_t pos = 0;
  bool incomment = FALSE;
  int lineno = 1;
  char hdrbuf[999]; /* Max. header length + 1. */

  for(;;) {
    int c = FUNC3(fp);
    if(c == EOF || (!pos && !FUNC0(c))) {
      /* Strip and flush the current header. */
      while(hdrlen && FUNC0(hdrbuf[hdrlen - 1]))
        hdrlen--;
      if(hdrlen) {
        hdrbuf[hdrlen] = '\0';
        if(FUNC4(pheaders, hdrbuf)) {
          FUNC2(config->global->errors,
                  "Out of memory for field headers!\n");
          return -1;
        }
        hdrlen = 0;
      }
    }

    switch(c) {
    case EOF:
      if(FUNC1(fp)) {
        FUNC2(config->global->errors,
                "Header file %s read error: %s\n", filename, FUNC5(errno));
        return -1;
      }
      return 0;    /* Done. */
    case '\r':
      continue;    /* Ignore. */
    case '\n':
      pos = 0;
      incomment = FALSE;
      lineno++;
      continue;
    case '#':
      if(!pos)
        incomment = TRUE;
      break;
    }

    pos++;
    if(!incomment) {
      if(hdrlen == sizeof(hdrbuf) - 1) {
        FUNC6(config->global, "File %s line %d: header too long (truncated)\n",
              filename, lineno);
        c = ' ';
      }
      if(hdrlen <= sizeof(hdrbuf) - 1)
        hdrbuf[hdrlen++] = (char) c;
    }
  }
  /* NOTREACHED */
}