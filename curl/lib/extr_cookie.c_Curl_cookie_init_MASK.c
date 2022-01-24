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
struct TYPE_2__ {void* cookie_engine; } ;
struct Curl_easy {TYPE_1__ state; } ;
struct CookieInfo {int newsession; void* running; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,struct CookieInfo*,int,void*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct CookieInfo*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FOPEN_READTEXT ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  MAX_COOKIE_LINE ; 
 void* TRUE ; 
 struct CookieInfo* FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct CookieInfo*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

struct CookieInfo *FUNC13(struct Curl_easy *data,
                                    const char *file,
                                    struct CookieInfo *inc,
                                    bool newsession)
{
  struct CookieInfo *c;
  FILE *fp = NULL;
  bool fromfile = TRUE;
  char *line = NULL;

  if(NULL == inc) {
    /* we didn't get a struct, create one */
    c = FUNC4(1, sizeof(struct CookieInfo));
    if(!c)
      return NULL; /* failed to get memory */
    c->filename = FUNC12(file?file:"none"); /* copy the name just in case */
    if(!c->filename)
      goto fail; /* failed to get memory */
  }
  else {
    /* we got an already existing one, use that */
    c = inc;
  }
  c->running = FALSE; /* this is not running, this is init */

  if(file && !FUNC11(file, "-")) {
    fp = stdin;
    fromfile = FALSE;
  }
  else if(file && !*file) {
    /* points to a "" string */
    fp = NULL;
  }
  else
    fp = file?FUNC7(file, FOPEN_READTEXT):NULL;

  c->newsession = newsession; /* new session? */

  if(fp) {
    char *lineptr;
    bool headerline;

    line = FUNC9(MAX_COOKIE_LINE);
    if(!line)
      goto fail;
    while(FUNC2(line, MAX_COOKIE_LINE, fp)) {
      if(FUNC5("Set-Cookie:", line)) {
        /* This is a cookie line, get it! */
        lineptr = &line[11];
        headerline = TRUE;
      }
      else {
        lineptr = line;
        headerline = FALSE;
      }
      while(*lineptr && FUNC3(*lineptr))
        lineptr++;

      FUNC0(data, c, headerline, TRUE, lineptr, NULL, NULL, TRUE);
    }
    FUNC8(line); /* free the line buffer */
    FUNC10(c); /* run this once, not on every cookie */

    if(fromfile)
      FUNC6(fp);
  }

  c->running = TRUE;          /* now, we're running */
  if(data)
    data->state.cookie_engine = TRUE;

  return c;

fail:
  FUNC8(line);
  if(!inc)
    /* Only clean up if we allocated it here, as the original could still be in
     * use by a share handle */
    FUNC1(c);
  if(fromfile && fp)
    FUNC6(fp);
  return NULL; /* out of memory */
}