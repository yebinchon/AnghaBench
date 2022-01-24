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
struct Slice {scalar_t__ iter; int /*<<< orphan*/  range; } ;

/* Variables and functions */
 int /*<<< orphan*/  Slice ; 
 struct Slice* FUNC0 (struct Slice*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(var self, var obj) {
  struct Slice* s = self;
  struct Slice* o = FUNC0(obj, Slice);
  if (s->iter > o->iter) { return  1; }
  if (s->iter < o->iter) { return -1; }
  return FUNC1(s->range, o->range);
}