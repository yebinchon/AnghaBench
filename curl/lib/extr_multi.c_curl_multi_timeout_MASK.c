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
struct Curl_multi {scalar_t__ in_callback; } ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLM_BAD_HANDLE ; 
 int /*<<< orphan*/  CURLM_RECURSIVE_API_CALL ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_multi*,long*) ; 

CURLMcode FUNC2(struct Curl_multi *multi,
                             long *timeout_ms)
{
  /* First, make some basic checks that the CURLM handle is a good handle */
  if(!FUNC0(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  return FUNC1(multi, timeout_ms);
}