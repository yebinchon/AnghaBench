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
typedef  scalar_t__ var ;
struct GC {scalar_t__ bottom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct GC*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct GC* gc) {
  
  var stk = NULL;
  var bot = gc->bottom;
  var top = stk;
  
  if (bot == top) { return; }
  
  if (bot < top) {
    for (var p = top; p >= bot; p = ((char*)p) - sizeof(var)) {
      FUNC0(gc, *((var*)p));
    }
  }
  
  if (bot > top) {
    for (var p = top; p <= bot; p = ((char*)p) + sizeof(var)) {
      FUNC0(gc, *((var*)p));
    }
  }
  
}