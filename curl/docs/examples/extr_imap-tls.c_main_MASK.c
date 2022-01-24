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
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  CURLOPT_USE_SSL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 scalar_t__ CURLUSESSL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = FUNC1();
  if(curl) {
    /* Set username and password */
    FUNC3(curl, CURLOPT_USERNAME, "user");
    FUNC3(curl, CURLOPT_PASSWORD, "secret");

    /* This will fetch message 1 from the user's inbox */
    FUNC3(curl, CURLOPT_URL,
                     "imap://imap.example.com/INBOX/;UID=1");

    /* In this example, we'll start with a plain text connection, and upgrade
     * to Transport Layer Security (TLS) using the STARTTLS command. Be careful
     * of using CURLUSESSL_TRY here, because if TLS upgrade fails, the transfer
     * will continue anyway - see the security discussion in the libcurl
     * tutorial for more details. */
    FUNC3(curl, CURLOPT_USE_SSL, (long)CURLUSESSL_ALL);

    /* If your server doesn't have a valid certificate, then you can disable
     * part of the Transport Layer Security protection by setting the
     * CURLOPT_SSL_VERIFYPEER and CURLOPT_SSL_VERIFYHOST options to 0 (false).
     *   curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
     *   curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
     *
     * That is, in general, a bad idea. It is still better than sending your
     * authentication details in plain text though.  Instead, you should get
     * the issuer certificate (or the host certificate if the certificate is
     * self-signed) and add it to the set of certificates that are known to
     * libcurl using CURLOPT_CAINFO and/or CURLOPT_CAPATH. See docs/SSLCERTS
     * for more information. */
    FUNC3(curl, CURLOPT_CAINFO, "/path/to/certificate.pem");

    /* Since the traffic will be encrypted, it is very useful to turn on debug
     * information within libcurl to see what is happening during the
     * transfer */
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    /* Perform the fetch */
    res = FUNC2(curl);

    /* Check for errors */
    if(res != CURLE_OK)
      FUNC5(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* Always cleanup */
    FUNC0(curl);
  }

  return (int)res;
}