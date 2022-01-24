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
struct MemoryStruct {int /*<<< orphan*/  memory; scalar_t__ size; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 char* WriteMemoryCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(void)
{
  CURL *curl_handle;
  CURLcode res;

  struct MemoryStruct chunk;

  chunk.memory = FUNC9(1);  /* will be grown as needed by the realloc above */
  chunk.size = 0;    /* no data at this point */

  FUNC6(CURL_GLOBAL_ALL);

  /* init the curl session */
  curl_handle = FUNC1();

  /* specify URL to get */
  FUNC3(curl_handle, CURLOPT_URL, "https://www.example.com/");

  /* send all data to this function  */
  FUNC3(curl_handle, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);

  /* we pass our 'chunk' struct to the callback function */
  FUNC3(curl_handle, CURLOPT_WRITEDATA, (void *)&chunk);

  /* some servers don't like requests that are made without a user-agent
     field, so we provide one */
  FUNC3(curl_handle, CURLOPT_USERAGENT, "libcurl-agent/1.0");

  /* get it! */
  res = FUNC2(curl_handle);

  /* check for errors */
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

    FUNC10("%lu bytes retrieved\n", (unsigned long)chunk.size);
  }

  /* cleanup curl stuff */
  FUNC0(curl_handle);

  FUNC8(chunk.memory);

  /* we're done with libcurl, so clean it up */
  FUNC5();

  return 0;
}