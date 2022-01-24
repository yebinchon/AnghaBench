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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_CUSTOMREQUEST ; 
 int /*<<< orphan*/  CURLOPT_MAIL_RCPT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
  CURL *curl;
  CURLcode res;
  struct curl_slist *recipients = NULL;

  curl = FUNC1();
  if(curl) {
    /* This is the URL for your mailserver */
    FUNC3(curl, CURLOPT_URL, "smtp://mail.example.com");

    /* Note that the CURLOPT_MAIL_RCPT takes a list, not a char array  */
    recipients = FUNC5(recipients, "Friends");
    FUNC3(curl, CURLOPT_MAIL_RCPT, recipients);

    /* Set the EXPN command */
    FUNC3(curl, CURLOPT_CUSTOMREQUEST, "EXPN");

    /* Perform the custom request */
    res = FUNC2(curl);

    /* Check for errors */
    if(res != CURLE_OK)
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* Free the list of recipients */
    FUNC6(recipients);

    /* Curl won't send the QUIT command until you call cleanup, so you should
     * be able to re-use this connection for additional requests. It may not be
     * a good idea to keep the connection open for a very long time though
     * (more than a few minutes may result in the server timing out the
     * connection) and you do want to clean up in the end.
     */
    FUNC0(curl);
  }

  return 0;
}