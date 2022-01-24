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
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,scalar_t__,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(CURLM *curl, curl_socket_t s, int evBitmask,
                       const char *info)
{
  int numhandles = 0;
  CURLMcode result = FUNC0(curl, s, evBitmask, &numhandles);
  if(result != CURLM_OK) {
    FUNC2(stderr, "Curl error on %s: %li (%s)\n",
            info, result, FUNC1(result));
  }
}