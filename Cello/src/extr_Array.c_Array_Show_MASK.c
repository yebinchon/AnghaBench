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
struct Array {size_t nitems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Array*,size_t) ; 
 int FUNC1 (struct Array*,int,char*,...) ; 

__attribute__((used)) static int FUNC2(var self, var output, int pos) {
  struct Array* a = self;
  pos = FUNC1(output, pos, "<'Array' At 0x%p [", self);
  for (size_t i = 0; i < a->nitems; i++) {
    pos = FUNC1(output, pos, "%$", FUNC0(a, i));
    if (i < a->nitems-1) { pos = FUNC1(output, pos, ", "); }
  }
  return FUNC1(output, pos, "]>");
}