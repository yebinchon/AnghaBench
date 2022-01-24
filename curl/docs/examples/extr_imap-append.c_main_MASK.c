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
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE ; 
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 long payload_source ; 
 char** payload_text ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char const*) ; 

int FUNC7(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = FUNC1();
  if(curl) {
    const char **p;
    long infilesize;
    struct upload_status upload_ctx;

    upload_ctx.lines_read = 0;

    /* Set username and password */
    FUNC3(curl, CURLOPT_USERNAME, "user");
    FUNC3(curl, CURLOPT_PASSWORD, "secret");

    /* This will create a new message 100. Note that you should perform an
     * EXAMINE command to obtain the UID of the next message to create and a
     * SELECT to ensure you are creating the message in the OUTBOX. */
    FUNC3(curl, CURLOPT_URL, "imap://imap.example.com/100");

    /* In this case, we're using a callback function to specify the data. You
     * could just use the CURLOPT_READDATA option to specify a FILE pointer to
     * read from. */
    FUNC3(curl, CURLOPT_READFUNCTION, payload_source);
    FUNC3(curl, CURLOPT_READDATA, &upload_ctx);
    FUNC3(curl, CURLOPT_UPLOAD, 1L);

    infilesize = 0;
    for(p = payload_text; *p; ++p) {
      infilesize += (long)FUNC6(*p);
    }
    FUNC3(curl, CURLOPT_INFILESIZE, infilesize);

    /* Perform the append */
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