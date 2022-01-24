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
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_WRITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DIR_CHAR ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  PATH_DELIMITERS ; 
 scalar_t__ errno ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 size_t FUNC7 (char const*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 

CURLcode FUNC9(const char *outfile, FILE *errors)
{
  char *tempdir;
  char *tempdir2;
  char *outdup;
  char *dirbuildup;
  CURLcode result = CURLE_OK;
  size_t outlen;

  outlen = FUNC7(outfile);
  outdup = FUNC6(outfile);
  if(!outdup)
    return CURLE_OUT_OF_MEMORY;

  dirbuildup = FUNC1(outlen + 1);
  if(!dirbuildup) {
    FUNC0(outdup);
    return CURLE_OUT_OF_MEMORY;
  }
  dirbuildup[0] = '\0';

  /* Allow strtok() here since this isn't used threaded */
  /* !checksrc! disable BANNEDFUNC 2 */
  tempdir = FUNC8(outdup, PATH_DELIMITERS);

  while(tempdir != NULL) {
    tempdir2 = FUNC8(NULL, PATH_DELIMITERS);
    /* since strtok returns a token for the last word even
       if not ending with DIR_CHAR, we need to prune it */
    if(tempdir2 != NULL) {
      size_t dlen = FUNC7(dirbuildup);
      if(dlen)
        FUNC3(&dirbuildup[dlen], outlen - dlen, "%s%s", DIR_CHAR, tempdir);
      else {
        if(outdup == tempdir)
          /* the output string doesn't start with a separator */
          FUNC5(dirbuildup, tempdir);
        else
          FUNC3(dirbuildup, outlen, "%s%s", DIR_CHAR, tempdir);
      }
      if((-1 == FUNC2(dirbuildup, (mode_t)0000750)) && (errno != EEXIST)) {
        FUNC4(errors, dirbuildup);
        result = CURLE_WRITE_ERROR;
        break; /* get out of loop */
      }
    }
    tempdir = tempdir2;
  }

  FUNC0(dirbuildup);
  FUNC0(outdup);

  return result;
}