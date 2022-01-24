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
typedef  struct Zip* var ;
struct Zip {int /*<<< orphan*/  values; int /*<<< orphan*/  iters; } ;

/* Variables and functions */
 int /*<<< orphan*/  Zip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Zip* FUNC1 (struct Zip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(var self, var obj) {
  struct Zip* z = self;
  struct Zip* o = FUNC1(obj, Zip);
  FUNC0(z->iters, o->iters);
  FUNC0(z->values, o->values);
}