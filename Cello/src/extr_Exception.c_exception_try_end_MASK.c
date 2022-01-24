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
struct Exception {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  Exception ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct Exception* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(void) {
  struct Exception* e = FUNC1(Exception);
  if (e->depth == 0) {
    FUNC2(stderr, "Cello Fatal Error: Exception Buffer Underflow!\n");
    FUNC0();
  }
  e->depth--;
}