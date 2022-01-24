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
typedef  scalar_t__ SANITIZEcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC7 (char**,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static char *FUNC12(const char *ptr, size_t len)
{
  char *copy;
  char *p;
  char *q;
  char  stop = '\0';

  /* simple implementation of strndup() */
  copy = FUNC3(len + 1);
  if(!copy)
    return NULL;
  FUNC4(copy, ptr, len);
  copy[len] = '\0';

  p = copy;
  if(*p == '\'' || *p == '"') {
    /* store the starting quote */
    stop = *p;
    p++;
  }
  else
    stop = ';';

  /* scan for the end letter and stop there */
  q = FUNC8(p, stop);
  if(q)
    *q = '\0';

  /* if the filename contains a path, only use filename portion */
  q = FUNC11(p, '/');
  if(q) {
    p = q + 1;
    if(!*p) {
      FUNC0(copy);
      return NULL;
    }
  }

  /* If the filename contains a backslash, only use filename portion. The idea
     is that even systems that don't handle backslashes as path separators
     probably want the path removed for convenience. */
  q = FUNC11(p, '\\');
  if(q) {
    p = q + 1;
    if(!*p) {
      FUNC0(copy);
      return NULL;
    }
  }

  /* make sure the file name doesn't end in \r or \n */
  q = FUNC8(p, '\r');
  if(q)
    *q = '\0';

  q = FUNC8(p, '\n');
  if(q)
    *q = '\0';

  if(copy != p)
    FUNC5(copy, p, FUNC10(p) + 1);

#if defined(MSDOS) || defined(WIN32)
  {
    char *sanitized;
    SANITIZEcode sc = sanitize_file_name(&sanitized, copy, 0);
    Curl_safefree(copy);
    if(sc)
      return NULL;
    copy = sanitized;
  }
#endif /* MSDOS || WIN32 */

  /* in case we built debug enabled, we allow an environment variable
   * named CURL_TESTDIR to prefix the given file name to put it into a
   * specific directory
   */
#ifdef DEBUGBUILD
  {
    char *tdir = curlx_getenv("CURL_TESTDIR");
    if(tdir) {
      char buffer[512]; /* suitably large */
      msnprintf(buffer, sizeof(buffer), "%s/%s", tdir, copy);
      Curl_safefree(copy);
      copy = strdup(buffer); /* clone the buffer, we don't use the libcurl
                                aprintf() or similar since we want to use the
                                same memory code as the "real" parse_filename
                                function */
      curl_free(tdir);
    }
  }
#endif

  return copy;
}