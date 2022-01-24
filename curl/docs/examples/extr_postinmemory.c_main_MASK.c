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
struct MemoryStruct {char* memory; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDSIZE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 long WriteMemoryCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*) ; 

int FUNC12(void)
{
  CURL *curl;
  CURLcode res;
  struct MemoryStruct chunk;
  static const char *postthis = "Field=1&Field=2&Field=3";

  chunk.memory = FUNC9(1);  /* will be grown as needed by realloc above */
  chunk.size = 0;    /* no data at this point */

  FUNC6(CURL_GLOBAL_ALL);
  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_URL, "https://www.example.org/");

    /* send all data to this function  */
    FUNC3(curl, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);

    /* we pass our 'chunk' struct to the callback function */
    FUNC3(curl, CURLOPT_WRITEDATA, (void *)&chunk);

    /* some servers don't like requests that are made without a user-agent
       field, so we provide one */
    FUNC3(curl, CURLOPT_USERAGENT, "libcurl-agent/1.0");

    FUNC3(curl, CURLOPT_POSTFIELDS, postthis);

    /* if we don't provide POSTFIELDSIZE, libcurl will strlen() by
       itself */
    FUNC3(curl, CURLOPT_POSTFIELDSIZE, (long)FUNC11(postthis));

    /* Perform the request, res will get the return code */
    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK) {
      FUNC7(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));
    }
    else {
      /*
       * Now, our chunk.memory points to a memory block that is chunk.size
       * bytes big and contains the remote file.
       *
       * Do something nice with it!
       */
      FUNC10("%s\n",chunk.memory);
    }

    /* always cleanup */
    FUNC0(curl);

    /* we're done with libcurl, so clean it up */
    FUNC5();
  }
  FUNC8(chunk.memory);
  return 0;
}