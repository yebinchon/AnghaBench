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
typedef  int /*<<< orphan*/  var ;
struct List {int nitems; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IndexOutOfBoundsError ; 
 int /*<<< orphan*/  Int ; 
 int /*<<< orphan*/ * FUNC1 (struct List*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct List*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static var FUNC4(struct List* l, int64_t i) {

  i = i < 0 ? l->nitems+i : i;

#if CELLO_BOUND_CHECK == 1
  if (i < 0 or i >= (int64_t)l->nitems) {
    return throw(IndexOutOfBoundsError,
      "Index '%i' out of bounds for List of size %i.", 
       $(Int, i), $(Int, l->nitems));
  }
#endif
  
  var item;
  
  if (i <= (int64_t)(l->nitems / 2)) {
    item = l->head;
    while (i) { item = *FUNC1(l, item); i--; }
  } else {
    i = l->nitems-i-1;
    item = l->tail;
    while (i) { item = *FUNC2(l, item); i--; }
  }
  
  return item;
}