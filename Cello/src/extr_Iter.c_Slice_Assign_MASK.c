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
typedef  struct Slice* var ;
struct Slice {int /*<<< orphan*/  range; int /*<<< orphan*/  iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  Slice ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Slice* FUNC1 (struct Slice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(var self, var obj) {
  struct Slice* s = self;
  struct Slice* o = FUNC1(obj, Slice);
  s->iter = o->iter;
  FUNC0(s->range, o->range);
}