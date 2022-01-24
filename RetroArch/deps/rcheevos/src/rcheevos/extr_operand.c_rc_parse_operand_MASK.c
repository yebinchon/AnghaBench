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
typedef  int /*<<< orphan*/  rc_parse_state_t ;
typedef  int /*<<< orphan*/  rc_operand_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 

int FUNC2(rc_operand_t* self, const char** memaddr, int is_trigger, rc_parse_state_t* parse) {
  if (is_trigger) {
    return FUNC1(self, memaddr, parse);
  }
  else {
    return FUNC0(self, memaddr, parse);
  }
}