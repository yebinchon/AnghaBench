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
typedef  struct Tuple* var ;
typedef  int /*<<< orphan*/  uint64_t ;
struct Tuple {int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 size_t FUNC0 (struct Tuple*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC2(var self) {
  struct Tuple* t = self;
  uint64_t h = 0;
  
  size_t n = FUNC0(self);
  for (size_t i = 0; i < n; i++) {
    h ^= FUNC1(t->items[i]);
  }
  
  return h;
}