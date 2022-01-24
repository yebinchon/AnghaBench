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
struct Exception {int active; } ;

/* Variables and functions */
 int /*<<< orphan*/  Exception ; 
 struct Exception* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(void) {
  struct Exception* e = FUNC0(Exception);
  e->active = true;
}