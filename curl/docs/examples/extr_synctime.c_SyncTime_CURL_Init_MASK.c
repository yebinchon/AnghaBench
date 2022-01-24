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
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_PROXY ; 
 int /*<<< orphan*/  CURLOPT_PROXYUSERPWD ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 char* SYNCTIME_UA ; 
 char** SyncTime_CURL_WriteHeader ; 
 char** SyncTime_CURL_WriteOutput ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

void FUNC2(CURL *curl, char *proxy_port,
                        char *proxy_user_password)
{
  if(FUNC1(proxy_port) > 0)
    FUNC0(curl, CURLOPT_PROXY, proxy_port);

  if(FUNC1(proxy_user_password) > 0)
    FUNC0(curl, CURLOPT_PROXYUSERPWD, proxy_user_password);

#ifdef SYNCTIME_UA
  curl_easy_setopt(curl, CURLOPT_USERAGENT, SYNCTIME_UA);
#endif
  FUNC0(curl, CURLOPT_WRITEFUNCTION, *SyncTime_CURL_WriteOutput);
  FUNC0(curl, CURLOPT_HEADERFUNCTION, *SyncTime_CURL_WriteHeader);
}