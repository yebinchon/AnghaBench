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
struct Zip {int /*<<< orphan*/ * items; struct Zip* iters; struct Zip* values; } ;
struct Tuple {int /*<<< orphan*/ * items; struct Tuple* iters; struct Tuple* values; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Zip*) ; 
 size_t FUNC1 (struct Zip*) ; 

__attribute__((used)) static var FUNC2(var self, var key) {
  struct Zip* z = self;
  struct Tuple* values = z->values;
  struct Tuple* iters = z->iters;
  size_t num = FUNC1(iters);
  
  for (size_t i = 0; i < num; i++) {
    values->items[i] = FUNC0(iters->items[i], key);
  }
  
  return values;
}