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
typedef  char curl_slist ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_RESOLVE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  /* Each single name resolve string should be written using the format
     HOST:PORT:ADDRESS where HOST is the name libcurl will try to resolve,
     PORT is the port number of the service where libcurl wants to connect to
     the HOST and ADDRESS is the numerical IP address
   */
  struct curl_slist *host = FUNC4(NULL,
                                              "example.com:443:127.0.0.1");

  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_RESOLVE, host);
    FUNC3(curl, CURLOPT_URL, "https://example.com");
    res = FUNC2(curl);

    /* always cleanup */
    FUNC0(curl);
  }

  FUNC5(host);

  return (int)res;
}