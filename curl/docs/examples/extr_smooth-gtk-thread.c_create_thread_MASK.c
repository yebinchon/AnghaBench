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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int NUMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int num_urls ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pull_one_url ; 
 int /*<<< orphan*/  stderr ; 
 char** urls ; 

void *FUNC8(void *progress_bar)
{
  pthread_t tid[NUMT];
  int i;

  /* Make sure I don't create more threads than urls. */
  for(i = 0; i < NUMT && i < num_urls ; i++) {
    int error = FUNC6(&tid[i],
                               NULL, /* default attributes please */
                               pull_one_url,
                               NULL);
    if(0 != error)
      FUNC2(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      FUNC2(stderr, "Thread %d, gets %s\n", i, urls[i]);
  }

  /* Wait for all threads to terminate. */
  for(i = 0; i < NUMT && i < num_urls; i++) {
    FUNC7(tid[i], NULL);
    FUNC2(stderr, "Thread %d terminated\n", i);
  }

  /* This stops the pulsing if you have it turned on in the progress bar
     section */
  FUNC4(FUNC0(FUNC3(FUNC1(progress_bar),
                                                    "pulse_id")));

  /* This destroys the progress bar */
  FUNC5(progress_bar);

  /* [Un]Comment this out to kill the program rather than pushing close. */
  /* gtk_main_quit(); */


  return NULL;

}