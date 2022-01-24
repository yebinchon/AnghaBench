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
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_NOSIGNAL ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSDATA ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_TIMEOUT ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  curl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long progressCallback ; 

int FUNC6(char *URL)
{
  int res = 0;

  FUNC5(CURL_GLOBAL_ALL);

  FUNC3(curl);

  FUNC4(curl, CURLOPT_URL, URL);
  FUNC4(curl, CURLOPT_TIMEOUT, (long)7);
  FUNC4(curl, CURLOPT_NOSIGNAL, (long)1);
  FUNC4(curl, CURLOPT_PROGRESSFUNCTION, progressCallback);
  FUNC4(curl, CURLOPT_PROGRESSDATA, NULL);
  FUNC4(curl, CURLOPT_NOPROGRESS, (long)0);

  res = FUNC1(curl);

test_cleanup:

  /* undocumented cleanup sequence - type UA */

  FUNC0(curl);
  FUNC2();

  return res;
}