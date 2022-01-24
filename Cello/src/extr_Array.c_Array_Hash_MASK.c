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
typedef  int /*<<< orphan*/  uint64_t ;
struct Array {size_t nitems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Array*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC2(var self) {
  struct Array* a = self;
  uint64_t h = 0;
  
  for (size_t i = 0; i < a->nitems; i++) {
    h ^= FUNC1(FUNC0(a, i));
  }
  
  return h;
}