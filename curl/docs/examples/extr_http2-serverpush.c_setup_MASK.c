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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLOPT_PIPEWAIT ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 long CURL_HTTP_VERSION_2_0 ; 
 int /*<<< orphan*/  OUTPUTFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 long my_trace ; 

__attribute__((used)) static int FUNC2(CURL *hnd)
{
  FILE *out = FUNC1(OUTPUTFILE, "wb");
  if(!out)
    /* failed */
    return 1;

  /* write to this file */
  FUNC0(hnd, CURLOPT_WRITEDATA, out);

  /* set the same URL */
  FUNC0(hnd, CURLOPT_URL, "https://localhost:8443/index.html");

  /* please be verbose */
  FUNC0(hnd, CURLOPT_VERBOSE, 1L);
  FUNC0(hnd, CURLOPT_DEBUGFUNCTION, my_trace);

  /* HTTP/2 please */
  FUNC0(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);

  /* we use a self-signed test server, skip verification during debugging */
  FUNC0(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC0(hnd, CURLOPT_SSL_VERIFYHOST, 0L);

#if (CURLPIPE_MULTIPLEX > 0)
  /* wait for pipe connection to confirm */
  curl_easy_setopt(hnd, CURLOPT_PIPEWAIT, 1L);
#endif
  return 0; /* all is good */
}