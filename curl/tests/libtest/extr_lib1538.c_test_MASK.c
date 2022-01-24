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
typedef  scalar_t__ CURLcode ;
typedef  scalar_t__ CURLSHcode ;
typedef  scalar_t__ CURLMcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLM_CALL_MULTI_PERFORM ; 
 scalar_t__ CURLM_LAST ; 
 scalar_t__ CURLSHE_LAST ; 
 scalar_t__ CURLSHE_OK ; 
 scalar_t__ CURL_LAST ; 
 scalar_t__ INT_MAX ; 
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 

int FUNC4(char *URL)
{
  int res = 0;
  CURLcode easyret;
  CURLMcode multiret;
  CURLSHcode shareret;
  (void)URL;

  FUNC0(INT_MAX);
  FUNC1(INT_MAX);
  FUNC2(INT_MAX);
  FUNC0(-INT_MAX);
  FUNC1(-INT_MAX);
  FUNC2(-INT_MAX);
  for(easyret = CURLE_OK; easyret <= CURL_LAST; easyret++) {
    FUNC3("e%d: %s\n", (int)easyret, FUNC0(easyret));
  }
  for(multiret = CURLM_CALL_MULTI_PERFORM; multiret <= CURLM_LAST;
      multiret++) {
    FUNC3("m%d: %s\n", (int)multiret, FUNC1(multiret));
  }
  for(shareret = CURLSHE_OK; shareret <= CURLSHE_LAST; shareret++) {
    FUNC3("s%d: %s\n", (int)shareret, FUNC2(shareret));
  }

  return (int)res;
}