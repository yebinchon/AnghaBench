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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HTTPAUTH ; 
 int /*<<< orphan*/  CURLOPT_HTTPGET ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERPWD ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static CURLcode FUNC7(CURL *curl, const char *url, int seq,
                             long auth_scheme, const char *userpwd)
{
  CURLcode res;
  size_t len = FUNC5(url) + 4 + 1;
  char *full_url = FUNC3(len);
  if(!full_url) {
    FUNC1(stderr, "Not enough memory for full url\n");
    return CURLE_OUT_OF_MEMORY;
  }

  FUNC4(full_url, len, "%s%04d", url, seq);
  FUNC1(stderr, "Sending new request %d to %s with credential %s "
          "(auth %ld)\n", seq, full_url, userpwd, auth_scheme);
  FUNC6(curl, CURLOPT_URL, full_url);
  FUNC6(curl, CURLOPT_VERBOSE, 1L);
  FUNC6(curl, CURLOPT_HEADER, 1L);
  FUNC6(curl, CURLOPT_HTTPGET, 1L);
  FUNC6(curl, CURLOPT_USERPWD, userpwd);
  FUNC6(curl, CURLOPT_HTTPAUTH, auth_scheme);

  res = FUNC0(curl);

test_cleanup:
  FUNC2(full_url);
  return res;
}