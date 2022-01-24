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
struct transfer {long out; int /*<<< orphan*/ * easy; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_DEBUGDATA ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLOPT_PIPEWAIT ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 long CURL_HTTP_VERSION_2_0 ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 long FUNC2 (char*,char*) ; 
 long my_trace ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC4(struct transfer *t, int num)
{
  char filename[128];
  CURL *hnd;

  hnd = t->easy = FUNC0();

  FUNC3(filename, 128, "dl-%d", num);

  t->out = FUNC2(filename, "wb");

  /* write to this file */
  FUNC1(hnd, CURLOPT_WRITEDATA, t->out);

  /* set the same URL */
  FUNC1(hnd, CURLOPT_URL, "https://localhost:8443/index.html");

  /* please be verbose */
  FUNC1(hnd, CURLOPT_VERBOSE, 1L);
  FUNC1(hnd, CURLOPT_DEBUGFUNCTION, my_trace);
  FUNC1(hnd, CURLOPT_DEBUGDATA, t);

  /* HTTP/2 please */
  FUNC1(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);

  /* we use a self-signed test server, skip verification during debugging */
  FUNC1(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC1(hnd, CURLOPT_SSL_VERIFYHOST, 0L);

#if (CURLPIPE_MULTIPLEX > 0)
  /* wait for pipe connection to confirm */
  curl_easy_setopt(hnd, CURLOPT_PIPEWAIT, 1L);
#endif
}