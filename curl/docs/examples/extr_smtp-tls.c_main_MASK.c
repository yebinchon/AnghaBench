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
struct upload_status {scalar_t__ lines_read; } ;
struct curl_slist {int dummy; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CC ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  CURLOPT_USE_SSL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 scalar_t__ CURLUSESSL_ALL ; 
 long FROM ; 
 int /*<<< orphan*/  TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 struct curl_slist* FUNC5 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 long payload_source ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct curl_slist *recipients = NULL;
  struct upload_status upload_ctx;

  upload_ctx.lines_read = 0;

  curl = FUNC1();
  if(curl) {
    /* Set username and password */
    FUNC3(curl, CURLOPT_USERNAME, "user");
    FUNC3(curl, CURLOPT_PASSWORD, "secret");

    /* This is the URL for your mailserver. Note the use of port 587 here,
     * instead of the normal SMTP port (25). Port 587 is commonly used for
     * secure mail submission (see RFC4403), but you should use whatever
     * matches your server configuration. */
    FUNC3(curl, CURLOPT_URL, "smtp://mainserver.example.net:587");

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
     * That is, in general, a bad idea. It is still better than sending your
     * authentication details in plain text though.  Instead, you should get
     * the issuer certificate (or the host certificate if the certificate is
     * self-signed) and add it to the set of certificates that are known to
     * libcurl using CURLOPT_CAINFO and/or CURLOPT_CAPATH. See docs/SSLCERTS
     * for more information. */
    FUNC3(curl, CURLOPT_CAINFO, "/path/to/certificate.pem");

    /* Note that this option isn't strictly required, omitting it will result
     * in libcurl sending the MAIL FROM command with empty sender data. All
     * autoresponses should have an empty reverse-path, and should be directed
     * to the address in the reverse-path which triggered them. Otherwise,
     * they could cause an endless loop. See RFC 5321 Section 4.5.5 for more
     * details.
     */
    FUNC3(curl, CURLOPT_MAIL_FROM, FROM);

    /* Add two recipients, in this particular case they correspond to the
     * To: and Cc: addressees in the header, but they could be any kind of
     * recipient. */
    recipients = FUNC5(recipients, TO);
    recipients = FUNC5(recipients, CC);
    FUNC3(curl, CURLOPT_MAIL_RCPT, recipients);

    /* We're using a callback function to specify the payload (the headers and
     * body of the message). You could just use the CURLOPT_READDATA option to
     * specify a FILE pointer to read from. */
    FUNC3(curl, CURLOPT_READFUNCTION, payload_source);
    FUNC3(curl, CURLOPT_READDATA, &upload_ctx);
    FUNC3(curl, CURLOPT_UPLOAD, 1L);

    /* Since the traffic will be encrypted, it is very useful to turn on debug
     * information within libcurl to see what is happening during the transfer.
     */
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    /* Send the message */
    res = FUNC2(curl);

    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* Free the list of recipients */
    FUNC6(recipients);

    /* Always cleanup */
    FUNC0(curl);
  }

  return (int)res;
}