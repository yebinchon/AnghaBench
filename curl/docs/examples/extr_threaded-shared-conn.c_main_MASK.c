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
struct initurl {char* url; int threadno; int /*<<< orphan*/ * share; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  CURLSH ;

/* Variables and functions */
 int /*<<< orphan*/  CURLSHOPT_LOCKFUNC ; 
 int /*<<< orphan*/  CURLSHOPT_SHARE ; 
 int /*<<< orphan*/  CURLSHOPT_UNLOCKFUNC ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_CONNECT ; 
 int NUM_THREADS ; 
 char* URL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  lock_cb ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct initurl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  run_thread ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  unlock_cb ; 

int FUNC10(void)
{
  pthread_t tid[NUM_THREADS];
  int i;
  CURLSH *share;
  struct initurl url[NUM_THREADS];

  /* Must initialize libcurl before any threads are started */
  FUNC1(CURL_GLOBAL_ALL);

  share = FUNC3();
  FUNC4(share, CURLSHOPT_LOCKFUNC, lock_cb);
  FUNC4(share, CURLSHOPT_UNLOCKFUNC, unlock_cb);
  FUNC4(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);

  FUNC6();

  for(i = 0; i< NUM_THREADS; i++) {
    int error;
    url[i].url = URL;
    url[i].share = share;
    url[i].threadno = i;
    error = FUNC8(&tid[i], NULL, run_thread, &url[i]);
    if(0 != error)
      FUNC5(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      FUNC5(stderr, "Thread %d, gets %s\n", i, URL);
  }

  /* now wait for all threads to terminate */
  for(i = 0; i< NUM_THREADS; i++) {
    FUNC9(tid[i], NULL);
    FUNC5(stderr, "Thread %d terminated\n", i);
  }

  FUNC7();

  FUNC2(share);
  FUNC0();
  return 0;
}