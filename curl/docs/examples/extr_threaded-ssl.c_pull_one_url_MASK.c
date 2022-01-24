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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static void *FUNC4(void *url)
{
  CURL *curl;

  curl = FUNC1();
  FUNC3(curl, CURLOPT_URL, url);
  /* this example doesn't verify the server's certificate, which means we
     might be downloading stuff from an impostor */
  FUNC3(curl, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC3(curl, CURLOPT_SSL_VERIFYHOST, 0L);
  FUNC2(curl); /* ignores error */
  FUNC0(curl);

  return NULL;
}