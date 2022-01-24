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
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 scalar_t__ curl ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long wrfu ; 

int FUNC6(void)
{
  FUNC5(CURL_GLOBAL_DEFAULT);

  curl = FUNC1();
  if(curl) {
    FUNC3(curl, CURLOPT_URL, "https://www.example.com/");

    FUNC3(curl, CURLOPT_WRITEFUNCTION, wrfu);

    FUNC3(curl, CURLOPT_SSL_VERIFYPEER, 0L);
    FUNC3(curl, CURLOPT_SSL_VERIFYHOST, 0L);

    FUNC3(curl, CURLOPT_VERBOSE, 0L);

    (void) FUNC2(curl);

    FUNC0(curl);
  }

  FUNC4();

  return 0;
}