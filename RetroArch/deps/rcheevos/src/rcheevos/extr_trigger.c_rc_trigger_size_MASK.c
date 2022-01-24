#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int offset; } ;
typedef  TYPE_1__ rc_parse_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char const**,TYPE_1__*) ; 
 int rc_trigger_t ; 
 int self ; 

int FUNC4(const char* memaddr) {
  rc_trigger_t* self;
  rc_parse_state_t parse;
  FUNC2(&parse, 0, 0, 0);

  self = FUNC0(rc_trigger_t, &parse);
  FUNC3(self, &memaddr, &parse);

  FUNC1(&parse);
  return parse.offset;
}