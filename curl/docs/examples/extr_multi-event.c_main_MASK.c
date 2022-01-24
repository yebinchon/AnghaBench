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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curl_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  handle_socket ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  on_timeout ; 
 int /*<<< orphan*/  start_timeout ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  timeout ; 

int FUNC13(int argc, char **argv)
{
  if(argc <= 1)
    return 0;

  if(FUNC2(CURL_GLOBAL_ALL)) {
    FUNC11(stderr, "Could not init curl\n");
    return 1;
  }

  base = FUNC8();
  timeout = FUNC10(base, on_timeout, NULL);

  curl_handle = FUNC4();
  FUNC5(curl_handle, CURLMOPT_SOCKETFUNCTION, handle_socket);
  FUNC5(curl_handle, CURLMOPT_TIMERFUNCTION, start_timeout);

  while(argc-- > 1) {
    FUNC0(argv[argc], argc);
  }

  FUNC6(base);

  FUNC3(curl_handle);
  FUNC9(timeout);
  FUNC7(base);

  FUNC12();
  FUNC1();

  return 0;
}