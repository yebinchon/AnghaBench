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
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLMcode ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 scalar_t__ CURLM_RECURSIVE_API_CALL ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (struct Curl_multi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

CURLMcode FUNC2(struct Curl_multi *multi, curl_socket_t s,
                                   int ev_bitmask, int *running_handles)
{
  CURLMcode result;
  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;
  result = FUNC1(multi, FALSE, s, ev_bitmask, running_handles);
  if(CURLM_OK >= result)
    FUNC0(multi);
  return result;
}