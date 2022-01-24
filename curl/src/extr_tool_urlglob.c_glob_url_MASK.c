#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_6__ {char* glob_buffer; char* error; scalar_t__ pos; scalar_t__ urllen; } ;
typedef  TYPE_1__ URLGlob ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int CURLcode ;

/* Variables and functions */
 int CURLE_OK ; 
 int CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*,int,unsigned long*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,scalar_t__,char*,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

CURLcode FUNC8(URLGlob **glob, char *url, unsigned long *urlnum,
                  FILE *error)
{
  /*
   * We can deal with any-size, just make a buffer with the same length
   * as the specified URL!
   */
  URLGlob *glob_expand;
  unsigned long amount = 0;
  char *glob_buffer;
  CURLcode res;

  *glob = NULL;

  glob_buffer = FUNC5(FUNC7(url) + 1);
  if(!glob_buffer)
    return CURLE_OUT_OF_MEMORY;
  glob_buffer[0] = 0;

  glob_expand = FUNC1(1, sizeof(URLGlob));
  if(!glob_expand) {
    FUNC0(glob_buffer);
    return CURLE_OUT_OF_MEMORY;
  }
  glob_expand->urllen = FUNC7(url);
  glob_expand->glob_buffer = glob_buffer;

  res = FUNC4(glob_expand, url, 1, &amount);
  if(!res)
    *urlnum = amount;
  else {
    if(error && glob_expand->error) {
      char text[512];
      const char *t;
      if(glob_expand->pos) {
        FUNC6(text, sizeof(text), "%s in URL position %zu:\n%s\n%*s^",
                  glob_expand->error,
                  glob_expand->pos, url, glob_expand->pos - 1, " ");
        t = text;
      }
      else
        t = glob_expand->error;

      /* send error description to the error-stream */
      FUNC2(error, "curl: (%d) %s\n", res, t);
    }
    /* it failed, we cleanup */
    FUNC3(glob_expand);
    *urlnum = 1;
    return res;
  }

  *glob = glob_expand;
  return CURLE_OK;
}