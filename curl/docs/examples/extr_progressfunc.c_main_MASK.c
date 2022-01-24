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
struct myprogress {int /*<<< orphan*/ * curl; scalar_t__ lastruntime; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSDATA ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_XFERINFODATA ; 
 int /*<<< orphan*/  CURLOPT_XFERINFOFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 long older_progress ; 
 int /*<<< orphan*/  stderr ; 
 long xferinfo ; 

int FUNC6(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct myprogress prog;

  curl = FUNC1();
  if(curl) {
    prog.lastruntime = 0;
    prog.curl = curl;

    FUNC3(curl, CURLOPT_URL, "https://example.com/");

#if LIBCURL_VERSION_NUM >= 0x072000
    /* xferinfo was introduced in 7.32.0, no earlier libcurl versions will
       compile as they won't have the symbols around.

       If built with a newer libcurl, but running with an older libcurl:
       curl_easy_setopt() will fail in run-time trying to set the new
       callback, making the older callback get used.

       New libcurls will prefer the new callback and instead use that one even
       if both callbacks are set. */

    curl_easy_setopt(curl, CURLOPT_XFERINFOFUNCTION, xferinfo);
    /* pass the struct pointer into the xferinfo function, note that this is
       an alias to CURLOPT_PROGRESSDATA */
    curl_easy_setopt(curl, CURLOPT_XFERINFODATA, &prog);
#else
    FUNC3(curl, CURLOPT_PROGRESSFUNCTION, older_progress);
    /* pass the struct pointer into the progress function */
    FUNC3(curl, CURLOPT_PROGRESSDATA, &prog);
#endif

    FUNC3(curl, CURLOPT_NOPROGRESS, 0L);
    res = FUNC2(curl);

    if(res != CURLE_OK)
      FUNC5(stderr, "%s\n", FUNC4(res));

    /* always cleanup */
    FUNC0(curl);
  }
  return (int)res;
}