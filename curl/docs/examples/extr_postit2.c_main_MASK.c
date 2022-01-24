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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_MIMEPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int FUNC16(int argc, char *argv[])
{
  CURL *curl;
  CURLcode res;

  curl_mime *form = NULL;
  curl_mimepart *field = NULL;
  struct curl_slist *headerlist = NULL;
  static const char buf[] = "Expect:";

  FUNC5(CURL_GLOBAL_ALL);

  curl = FUNC1();
  if(curl) {
    /* Create the form */
    form = FUNC10(curl);

    /* Fill in the file upload field */
    field = FUNC6(form);
    FUNC11(field, "sendfile");
    FUNC8(field, "postit2.c");

    /* Fill in the filename field */
    field = FUNC6(form);
    FUNC11(field, "filename");
    FUNC7(field, "postit2.c", CURL_ZERO_TERMINATED);

    /* Fill in the submit field too, even if this is rarely needed */
    field = FUNC6(form);
    FUNC11(field, "submit");
    FUNC7(field, "send", CURL_ZERO_TERMINATED);

    /* initialize custom header list (stating that Expect: 100-continue is not
       wanted */
    headerlist = FUNC12(headerlist, buf);
    /* what URL that receives this POST */
    FUNC3(curl, CURLOPT_URL, "https://example.com/examplepost.cgi");
    if((argc == 2) && (!FUNC15(argv[1], "noexpectheader")))
      /* only disable 100-continue header if explicitly requested */
      FUNC3(curl, CURLOPT_HTTPHEADER, headerlist);
    FUNC3(curl, CURLOPT_MIMEPOST, form);

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC14(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);

    /* then cleanup the form */
    FUNC9(form);
    /* free slist */
    FUNC13(headerlist);
  }
  return 0;
}