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
 int /*<<< orphan*/  CURLOPT_CUSTOMREQUEST ; 
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
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

    /* This is source mailbox folder to select */
    FUNC3(curl, CURLOPT_URL, "imap://imap.example.com/INBOX");

    /* Set the COPY command specifying the message ID and destination folder */
    FUNC3(curl, CURLOPT_CUSTOMREQUEST, "COPY 1 FOLDER");

    /* Note that to perform a move operation you will need to perform the copy,
     * then mark the original mail as Deleted and EXPUNGE or CLOSE. Please see
     * imap-store.c for more information on deleting messages. */

    /* Perform the custom request */
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