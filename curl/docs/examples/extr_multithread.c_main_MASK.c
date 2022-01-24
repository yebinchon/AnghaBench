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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int NUMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pull_one_url ; 
 int /*<<< orphan*/  stderr ; 
 char** urls ; 

int FUNC4(int argc, char **argv)
{
  pthread_t tid[NUMT];
  int i;

  /* Must initialize libcurl before any threads are started */
  FUNC0(CURL_GLOBAL_ALL);

  for(i = 0; i< NUMT; i++) {
    int error = FUNC2(&tid[i],
                               NULL, /* default attributes please */
                               pull_one_url,
                               (void *)urls[i]);
    if(0 != error)
      FUNC1(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      FUNC1(stderr, "Thread %d, gets %s\n", i, urls[i]);
  }

  /* now wait for all threads to terminate */
  for(i = 0; i< NUMT; i++) {
    FUNC3(tid[i], NULL);
    FUNC1(stderr, "Thread %d terminated\n", i);
  }

  return 0;
}