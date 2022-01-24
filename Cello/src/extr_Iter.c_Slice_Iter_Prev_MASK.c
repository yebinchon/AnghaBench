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
struct Slice {int /*<<< orphan*/  iter; struct Range* range; } ;
struct Range {scalar_t__ step; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 struct Slice* FUNC0 (int /*<<< orphan*/ ,struct Slice*) ; 
 struct Slice* FUNC1 (int /*<<< orphan*/ ,struct Slice*) ; 

__attribute__((used)) static var FUNC2(var self, var curr) {
  struct Slice* s = self;
  struct Range* r = s->range;
  
  if (r->step > 0) {
    for (int64_t i = 0; i < r->step; i++) {
      curr = FUNC1(s->iter, curr);
    }
  }
  
  if (r->step < 0) {
    for (int64_t i = 0; i < -r->step; i++) {
      curr = FUNC0(s->iter, curr);
    }
  }
  
  return curr;
}