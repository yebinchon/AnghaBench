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
struct Exception {int /*<<< orphan*/  msg; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  File ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(struct Exception* e)  {
  
  FUNC3(FUNC0(File, stderr), 0, "\n");
  FUNC3(FUNC0(File, stderr), 0, "!!\t\n");
  FUNC3(FUNC0(File, stderr), 0, "!!\tUncaught %$\n", e->obj);
  FUNC3(FUNC0(File, stderr), 0, "!!\t\n");
  FUNC3(FUNC0(File, stderr), 0, "!!\t\t %s\n", e->msg);
  FUNC3(FUNC0(File, stderr), 0, "!!\t\n");
  
  FUNC1();
  
  FUNC2(EXIT_FAILURE);
  
}