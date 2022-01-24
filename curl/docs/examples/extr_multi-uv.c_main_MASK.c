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
 int /*<<< orphan*/  CURLMOPT_SOCKETFUNCTION ; 
 int /*<<< orphan*/  CURLMOPT_TIMERFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curl_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  handle_socket ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  start_timeout ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(int argc, char **argv)
{
  loop = FUNC6();

  if(argc <= 1)
    return 0;

  if(FUNC1(CURL_GLOBAL_ALL)) {
    FUNC5(stderr, "Could not init curl\n");
    return 1;
  }

  FUNC8(loop, &timeout);

  curl_handle = FUNC3();
  FUNC4(curl_handle, CURLMOPT_SOCKETFUNCTION, handle_socket);
  FUNC4(curl_handle, CURLMOPT_TIMERFUNCTION, start_timeout);

  while(argc-- > 1) {
    FUNC0(argv[argc], argc);
  }

  FUNC7(loop, UV_RUN_DEFAULT);
  FUNC2(curl_handle);

  return 0;
}