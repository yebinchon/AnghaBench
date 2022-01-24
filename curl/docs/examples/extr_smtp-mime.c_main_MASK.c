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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  char curl_mime ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 char* CC ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_MAIL_FROM ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 char* FROM ; 
 char* TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 
 char** headers_text ; 
 int /*<<< orphan*/  inline_html ; 
 int /*<<< orphan*/  inline_text ; 
 int /*<<< orphan*/  stderr ; 

int FUNC16(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = FUNC1();
  if(curl) {
    struct curl_slist *headers = NULL;
    struct curl_slist *recipients = NULL;
    struct curl_slist *slist = NULL;
    curl_mime *mime;
    curl_mime *alt;
    curl_mimepart *part;
    const char **cpp;

    /* This is the URL for your mailserver */
    FUNC3(curl, CURLOPT_URL, "smtp://mail.example.com");

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
    recipients = FUNC13(recipients, TO);
    recipients = FUNC13(recipients, CC);
    FUNC3(curl, CURLOPT_MAIL_RCPT, recipients);

    /* Build and set the message header list. */
    for(cpp = headers_text; *cpp; cpp++)
      headers = FUNC13(headers, *cpp);
    FUNC3(curl, CURLOPT_HTTPHEADER, headers);

    /* Build the mime message. */
    mime = FUNC10(curl);

    /* The inline part is an alternative proposing the html and the text
       versions of the e-mail. */
    alt = FUNC10(curl);

    /* HTML message. */
    part = FUNC5(alt);
    FUNC6(part, inline_html, CURL_ZERO_TERMINATED);
    FUNC12(part, "text/html");

    /* Text message. */
    part = FUNC5(alt);
    FUNC6(part, inline_text, CURL_ZERO_TERMINATED);

    /* Create the inline part. */
    part = FUNC5(mime);
    FUNC11(part, alt);
    FUNC12(part, "multipart/alternative");
    slist = FUNC13(NULL, "Content-Disposition: inline");
    FUNC9(part, slist, 1);

    /* Add the current source program as an attachment. */
    part = FUNC5(mime);
    FUNC7(part, "smtp-mime.c");
    FUNC3(curl, CURLOPT_MIMEPOST, mime);

    /* Send the message */
    res = FUNC2(curl);

    /* Check for errors */
    if(res != CURLE_OK)
      FUNC15(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* Free lists. */
    FUNC14(recipients);
    FUNC14(headers);

    /* curl won't send the QUIT command until you call cleanup, so you should
     * be able to re-use this connection for additional messages (setting
     * CURLOPT_MAIL_FROM and CURLOPT_MAIL_RCPT as required, and calling
     * curl_easy_perform() again. It may not be a good idea to keep the
     * connection open for a very long time though (more than a few minutes
     * may result in the server timing out the connection), and you do want to
     * clean up in the end.
     */
    FUNC0(curl);

    /* Free multipart message. */
    FUNC8(mime);
  }

  return (int)res;
}