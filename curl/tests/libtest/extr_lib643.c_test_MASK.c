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
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(char *URL)
{
  int res;

  if(FUNC1(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC3(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  res = FUNC4(URL, TRUE); /* old */
  if(!res)
    res = FUNC4(URL, FALSE); /* new */

  if(!res)
    res = FUNC2();

  FUNC0();

  return res;
}