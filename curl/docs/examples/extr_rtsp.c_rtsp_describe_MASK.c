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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_RTSP_REQUEST ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 scalar_t__ CURL_RTSPREQ_DESCRIBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC6(CURL *curl, const char *uri,
                          const char *sdp_filename)
{
  CURLcode res = CURLE_OK;
  FILE *sdp_fp = FUNC1(sdp_filename, "wb");
  FUNC5("\nRTSP: DESCRIBE %s\n", uri);
  if(sdp_fp == NULL) {
    FUNC2(stderr, "Could not open '%s' for writing\n", sdp_filename);
    sdp_fp = stdout;
  }
  else {
    FUNC5("Writing SDP to '%s'\n", sdp_filename);
  }
  FUNC4(curl, CURLOPT_WRITEDATA, sdp_fp);
  FUNC4(curl, CURLOPT_RTSP_REQUEST, (long)CURL_RTSPREQ_DESCRIBE);
  FUNC3(curl);
  FUNC4(curl, CURLOPT_WRITEDATA, stdout);
  if(sdp_fp != stdout) {
    FUNC0(sdp_fp);
  }
}