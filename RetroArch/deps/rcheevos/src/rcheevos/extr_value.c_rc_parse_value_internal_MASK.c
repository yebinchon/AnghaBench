#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* expressions; } ;
typedef  TYPE_1__ rc_value_t ;
struct TYPE_9__ {scalar_t__ offset; } ;
typedef  TYPE_2__ rc_parse_state_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_3__ rc_expression_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (char const**,TYPE_2__*) ; 

void FUNC1(rc_value_t* self, const char** memaddr, rc_parse_state_t* parse) {
  rc_expression_t** next;

  next = &self->expressions;

  for (;;) {
    *next = FUNC0(memaddr, parse);

    if (parse->offset < 0) {
      return;
    }

    next = &(*next)->next;

    if (**memaddr != '$') {
      break;
    }

    (*memaddr)++;
  }

  *next = 0;
}