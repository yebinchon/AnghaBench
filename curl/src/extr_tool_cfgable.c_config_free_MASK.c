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
struct OperationConfig {struct OperationConfig* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct OperationConfig*) ; 
 int /*<<< orphan*/  FUNC1 (struct OperationConfig*) ; 

void FUNC2(struct OperationConfig *config)
{
  struct OperationConfig *last = config;

  /* Free each of the structures in reverse order */
  while(last) {
    struct OperationConfig *prev = last->prev;

    FUNC1(last);
    FUNC0(last);

    last = prev;
  }
}