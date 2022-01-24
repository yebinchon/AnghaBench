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

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FALSE ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(char *URL)
{
  int res;

  if(FUNC1(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC2(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  res = FUNC3(URL, TRUE); /* old */
  if(!res)
    res = FUNC3(URL, FALSE); /* new */

  FUNC0();

  return res;
}