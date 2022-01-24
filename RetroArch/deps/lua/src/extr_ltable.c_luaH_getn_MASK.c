#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int lua_Unsigned ;
struct TYPE_5__ {unsigned int sizearray; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (TYPE_1__*,unsigned int) ; 

lua_Unsigned FUNC3 (Table *t) {
  unsigned int j = t->sizearray;
  if (j > 0 && FUNC1(&t->array[j - 1])) {
    /* there is a boundary in the array part: (binary) search for it */
    unsigned int i = 0;
    while (j - i > 1) {
      unsigned int m = (i+j)/2;
      if (FUNC1(&t->array[m - 1])) j = m;
      else i = m;
    }
    return i;
  }
  /* else must find a boundary in hash part */
  else if (FUNC0(t))  /* hash part is empty? */
    return j;  /* that is easy... */
  else return FUNC2(t, j);
}