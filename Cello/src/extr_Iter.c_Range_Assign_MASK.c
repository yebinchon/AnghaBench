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
typedef  struct Range* var ;
struct Range {int /*<<< orphan*/  step; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  Range ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Range* FUNC1 (struct Range*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(var self, var obj) {
  struct Range* r = self;
  struct Range* o = FUNC1(obj, Range);
  FUNC0(r->value, o->value);
  r->start = o->start;
  r->stop = o->stop;
  r->step = o->step;
}