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
struct Range {scalar_t__ step; scalar_t__ start; scalar_t__ stop; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 struct Slice* Terminal ; 
 struct Slice* FUNC0 (int /*<<< orphan*/ ) ; 
 struct Slice* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Slice* FUNC2 (int /*<<< orphan*/ ,struct Slice*) ; 
 struct Slice* FUNC3 (int /*<<< orphan*/ ,struct Slice*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static var FUNC5(var self) {
  struct Slice* s = self;
  struct Range* r = s->range;
  
  if (r->step > 0) {
    var curr = FUNC0(s->iter);
    for(int64_t i = 0; i < r->start; i++) {
      curr = FUNC2(s->iter, curr);
    }
    return curr;
  }
  
  if (r->step < 0) {
    var curr = FUNC1(s->iter);
    for (int64_t i = 0; i < (int64_t)FUNC4(s->iter)-r->stop; i++) {
      curr = FUNC3(s->iter, curr);
    }
    return curr;
  }

  return Terminal;
}