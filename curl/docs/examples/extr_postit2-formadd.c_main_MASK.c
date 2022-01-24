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
typedef  char curl_httppost ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLFORM_COPYCONTENTS ; 
 int /*<<< orphan*/  CURLFORM_COPYNAME ; 
 int /*<<< orphan*/  CURLFORM_END ; 
 int /*<<< orphan*/  CURLFORM_FILE ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_HTTPPOST ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int FUNC12(int argc, char *argv[])
{
  CURL *curl;
  CURLcode res;

  struct curl_httppost *formpost = NULL;
  struct curl_httppost *lastptr = NULL;
  struct curl_slist *headerlist = NULL;
  static const char buf[] = "Expect:";

  FUNC7(CURL_GLOBAL_ALL);

  /* Fill in the file upload field */
  FUNC5(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "sendfile",
               CURLFORM_FILE, "postit2.c",
               CURLFORM_END);

  /* Fill in the filename field */
  FUNC5(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "filename",
               CURLFORM_COPYCONTENTS, "postit2.c",
               CURLFORM_END);


  /* Fill in the submit field too, even if this is rarely needed */
  FUNC5(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "submit",
               CURLFORM_COPYCONTENTS, "send",
               CURLFORM_END);

  curl = FUNC1();
  /* initialize custom header list (stating that Expect: 100-continue is not
     wanted */
  headerlist = FUNC8(headerlist, buf);
  if(curl) {
    /* what URL that receives this POST */
    FUNC3(curl, CURLOPT_URL, "https://example.com/examplepost.cgi");
    if((argc == 2) && (!FUNC11(argv[1], "noexpectheader")))
      /* only disable 100-continue header if explicitly requested */
      FUNC3(curl, CURLOPT_HTTPHEADER, headerlist);
    FUNC3(curl, CURLOPT_HTTPPOST, formpost);

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC10(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    /* always cleanup */
    FUNC0(curl);

    /* then cleanup the formpost chain */
    FUNC6(formpost);
    /* free slist */
    FUNC9(headerlist);
  }
  return 0;
}