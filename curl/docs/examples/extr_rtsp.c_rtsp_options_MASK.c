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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_RTSP_STREAM_URI ; 
 scalar_t__ CURL_RTSPREQ_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(CURL *curl, const char *uri)
{
  CURLcode res = CURLE_OK;
  FUNC2("\nRTSP: OPTIONS %s\n", uri);
  FUNC1(curl, CURLOPT_RTSP_STREAM_URI, uri);
  FUNC1(curl, CURLOPT_RTSP_REQUEST, (long)CURL_RTSPREQ_OPTIONS);
  FUNC0(curl);
}