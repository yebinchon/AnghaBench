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
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_CAPATH ; 
 int /*<<< orphan*/  CURLOPT_FRESH_CONNECT ; 
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_NOSIGNAL ; 
 int /*<<< orphan*/  CURLOPT_SSLCERTTYPE ; 
 int /*<<< orphan*/  CURLOPT_SSL_CTX_FUNCTION ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 long* sslctx_function ; 
 long stderr ; 
 long stdout ; 
 long* writefunction ; 

int FUNC7(void)
{
  CURL *ch;
  CURLcode rv;

  FUNC5(CURL_GLOBAL_ALL);
  ch = FUNC1();
  FUNC3(ch, CURLOPT_VERBOSE, 0L);
  FUNC3(ch, CURLOPT_HEADER, 0L);
  FUNC3(ch, CURLOPT_NOPROGRESS, 1L);
  FUNC3(ch, CURLOPT_NOSIGNAL, 1L);
  FUNC3(ch, CURLOPT_WRITEFUNCTION, *writefunction);
  FUNC3(ch, CURLOPT_WRITEDATA, stdout);
  FUNC3(ch, CURLOPT_HEADERFUNCTION, *writefunction);
  FUNC3(ch, CURLOPT_HEADERDATA, stderr);
  FUNC3(ch, CURLOPT_SSLCERTTYPE, "PEM");
  FUNC3(ch, CURLOPT_SSL_VERIFYPEER, 1L);
  FUNC3(ch, CURLOPT_URL, "https://www.example.com/");

  /* Turn off the default CA locations, otherwise libcurl will load CA
   * certificates from the locations that were detected/specified at
   * build-time
   */
  FUNC3(ch, CURLOPT_CAINFO, NULL);
  FUNC3(ch, CURLOPT_CAPATH, NULL);

  /* first try: retrieve page without ca certificates -> should fail
   * unless libcurl was built --with-ca-fallback enabled at build-time
   */
  rv = FUNC2(ch);
  if(rv == CURLE_OK)
    FUNC6("*** transfer succeeded ***\n");
  else
    FUNC6("*** transfer failed ***\n");

  /* use a fresh connection (optional)
   * this option seriously impacts performance of multiple transfers but
   * it is necessary order to demonstrate this example. recall that the
   * ssl ctx callback is only called _before_ an SSL connection is
   * established, therefore it will not affect existing verified SSL
   * connections already in the connection cache associated with this
   * handle. normally you would set the ssl ctx function before making
   * any transfers, and not use this option.
   */
  FUNC3(ch, CURLOPT_FRESH_CONNECT, 1L);

  /* second try: retrieve page using cacerts' certificate -> will succeed
   * load the certificate by installing a function doing the necessary
   * "modifications" to the SSL CONTEXT just before link init
   */
  FUNC3(ch, CURLOPT_SSL_CTX_FUNCTION, *sslctx_function);
  rv = FUNC2(ch);
  if(rv == CURLE_OK)
    FUNC6("*** transfer succeeded ***\n");
  else
    FUNC6("*** transfer failed ***\n");

  FUNC0(ch);
  FUNC4();
  return rv;
}