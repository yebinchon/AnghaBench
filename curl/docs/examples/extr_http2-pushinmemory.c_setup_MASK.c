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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLOPT_PIPEWAIT ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 long CURL_HTTP_VERSION_2_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * files ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long write_cb ; 

__attribute__((used)) static void FUNC2(CURL *hnd)
{
  /* set the same URL */
  FUNC0(hnd, CURLOPT_URL, "https://localhost:8443/index.html");

  /* HTTP/2 please */
  FUNC0(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);

  /* we use a self-signed test server, skip verification during debugging */
  FUNC0(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC0(hnd, CURLOPT_SSL_VERIFYHOST, 0L);

  /* write data to a struct  */
  FUNC0(hnd, CURLOPT_WRITEFUNCTION, write_cb);
  FUNC1(&files[0]);
  FUNC0(hnd, CURLOPT_WRITEDATA, &files[0]);

  /* wait for pipe connection to confirm */
  FUNC0(hnd, CURLOPT_PIPEWAIT, 1L);
}