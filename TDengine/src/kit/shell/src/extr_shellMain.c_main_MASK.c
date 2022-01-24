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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * con ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interruptHandler ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shellLoopQuery ; 
 int /*<<< orphan*/  FUNC6 (int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(int argc, char* argv[]) {
  /*setlocale(LC_ALL, "en_US.UTF-8"); */

  if (!FUNC0()) {
    FUNC1(EXIT_FAILURE);
  }

  FUNC6(argc, argv, &args);

  /* Initialize the shell */
  con = FUNC5(&args);
  if (con == NULL) {
    FUNC8(con);
    FUNC1(EXIT_FAILURE);
  }

  /* Interupt handler. */
  struct sigaction act;
  act.sa_handler = interruptHandler;
  FUNC7(SIGTERM, &act, NULL);
  FUNC7(SIGINT, &act, NULL);

  /* Get grant information */
  FUNC4(con);

  /* Loop to query the input. */
  while (1) {
    FUNC2(&pid, NULL, shellLoopQuery, con);
    FUNC3(pid, NULL);
  }
  return 0;
}