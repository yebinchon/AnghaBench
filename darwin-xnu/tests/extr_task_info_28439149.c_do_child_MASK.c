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
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 

__attribute__((used)) static void FUNC3(int *pipefd){
	int exit = 0;

	FUNC1(pipefd[1]);
	FUNC2(pipefd[0], &exit, sizeof(int));
	T_QUIET; FUNC0(exit, 1, "exit");
	FUNC1(pipefd[0]);
}