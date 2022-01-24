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
typedef  int CURLcode ;

/* Variables and functions */
 int CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC1(void)
{
  int res = CURLE_OK;

  FUNC0(CURL_GLOBAL_ALL);
  return res;
}