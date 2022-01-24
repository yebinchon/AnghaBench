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
typedef  struct Array* var ;
struct Array {scalar_t__ nitems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Array*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct Array*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct Array*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Array*) ; 

__attribute__((used)) static void FUNC4(var self, var obj) {
  struct Array* a = self;
  a->nitems++;
  FUNC2(a);
  FUNC0(a, a->nitems-1);
  FUNC3(FUNC1(a, a->nitems-1), obj);
}