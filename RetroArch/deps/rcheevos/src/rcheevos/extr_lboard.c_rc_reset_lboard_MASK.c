#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cancel; int /*<<< orphan*/  submit; int /*<<< orphan*/  start; scalar_t__ submitted; scalar_t__ started; } ;
typedef  TYPE_1__ rc_lboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(rc_lboard_t* self) {
  self->started = self->submitted = 0;

  FUNC0(&self->start);
  FUNC0(&self->submit);
  FUNC0(&self->cancel);
}