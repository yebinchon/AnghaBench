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
 int /*<<< orphan*/  CC_ADDR ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 long FROM_ADDR ; 
 int /*<<< orphan*/  TO_ADDR ; 
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
    /* This is the URL for your mailserver */
    FUNC3(curl, CURLOPT_URL, "smtp://mail.example.com");

    /* Note that this option isn't strictly required, omitting it will result
     * in libcurl sending the MAIL FROM command with empty sender data. All
     * autoresponses should have an empty reverse-path, and should be directed
     * to the address in the reverse-path which triggered them. Otherwise,
     * they could cause an endless loop. See RFC 5321 Section 4.5.5 for more
     * details.
     */
    FUNC3(curl, CURLOPT_MAIL_FROM, FROM_ADDR);

    /* Add two recipients, in this particular case they correspond to the
     * To: and Cc: addressees in the header, but they could be any kind of
     * recipient. */
    recipients = FUNC5(recipients, TO_ADDR);
    recipients = FUNC5(recipients, CC_ADDR);
    FUNC3(curl, CURLOPT_MAIL_RCPT, recipients);

    /* We're using a callback function to specify the payload (the headers and
     * body of the message). You could just use the CURLOPT_READDATA option to
     * specify a FILE pointer to read from. */
    FUNC3(curl, CURLOPT_READFUNCTION, payload_source);
    FUNC3(curl, CURLOPT_READDATA, &upload_ctx);
    FUNC3(curl, CURLOPT_UPLOAD, 1L);

    /* Send the message */
    res = FUNC2(curl);

    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* Free the list of recipients */
    FUNC6(recipients);

    /* curl won't send the QUIT command until you call cleanup, so you should
     * be able to re-use this connection for additional messages (setting
     * CURLOPT_MAIL_FROM and CURLOPT_MAIL_RCPT as required, and calling
     * curl_easy_perform() again. It may not be a good idea to keep the
     * connection open for a very long time though (more than a few minutes
     * may result in the server timing out the connection), and you do want to
     * clean up in the end.
     */
    FUNC0(curl);
  }

  return (int)res;
}