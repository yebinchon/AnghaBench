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
struct Zip {void* values; void* iters; } ;

/* Variables and functions */
 int /*<<< orphan*/  Tuple ; 
 int /*<<< orphan*/  _ ; 
 int /*<<< orphan*/  FUNC0 (void*,struct Zip*) ; 
 size_t FUNC1 (struct Zip*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(var self, var args) {
  struct Zip* z = self;
  z->iters = FUNC2(Tuple);
  z->values = FUNC2(Tuple);
  FUNC0(z->iters, args);
  for (size_t i = 0; i < FUNC1(args); i++) {
    FUNC3(z->values, _);
  }
}