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
typedef  int /*<<< orphan*/  nline ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_COOKIEFILE ; 
 int /*<<< orphan*/  CURLOPT_COOKIELIST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(void)
{
  CURL *curl;
  CURLcode res;

  FUNC6(CURL_GLOBAL_ALL);
  curl = FUNC1();
  if(curl) {
    char nline[256];

    FUNC3(curl, CURLOPT_URL, "https://www.example.com/");
    FUNC3(curl, CURLOPT_VERBOSE, 1L);
    FUNC3(curl, CURLOPT_COOKIEFILE, ""); /* start cookie engine */
    res = FUNC2(curl);
    if(res != CURLE_OK) {
      FUNC7(stderr, "Curl perform failed: %s\n", FUNC4(res));
      return 1;
    }

    FUNC8(curl);

    FUNC9("Erasing curl's knowledge of cookies!\n");
    FUNC3(curl, CURLOPT_COOKIELIST, "ALL");

    FUNC8(curl);

    FUNC9("-----------------------------------------------\n"
           "Setting a cookie \"PREF\" via cookie interface:\n");
#ifdef WIN32
#define snprintf _snprintf
#endif
    /* Netscape format cookie */
    FUNC10(nline, sizeof(nline), "%s\t%s\t%s\t%s\t%lu\t%s\t%s",
             ".example.com", "TRUE", "/", "FALSE",
             (unsigned long)FUNC11(NULL) + 31337UL,
             "PREF", "hello example, i like you very much!");
    res = FUNC3(curl, CURLOPT_COOKIELIST, nline);
    if(res != CURLE_OK) {
      FUNC7(stderr, "Curl curl_easy_setopt failed: %s\n",
              FUNC4(res));
      return 1;
    }

    /* HTTP-header style cookie. If you use the Set-Cookie format and don't
    specify a domain then the cookie is sent for any domain and will not be
    modified, likely not what you intended. Starting in 7.43.0 any-domain
    cookies will not be exported either. For more information refer to the
    CURLOPT_COOKIELIST documentation.
    */
    FUNC10(nline, sizeof(nline),
      "Set-Cookie: OLD_PREF=3d141414bf4209321; "
      "expires=Sun, 17-Jan-2038 19:14:07 GMT; path=/; domain=.example.com");
    res = FUNC3(curl, CURLOPT_COOKIELIST, nline);
    if(res != CURLE_OK) {
      FUNC7(stderr, "Curl curl_easy_setopt failed: %s\n",
              FUNC4(res));
      return 1;
    }

    FUNC8(curl);

    res = FUNC2(curl);
    if(res != CURLE_OK) {
      FUNC7(stderr, "Curl perform failed: %s\n", FUNC4(res));
      return 1;
    }

    FUNC0(curl);
  }
  else {
    FUNC7(stderr, "Curl init failed!\n");
    return 1;
  }

  FUNC5();
  return 0;
}