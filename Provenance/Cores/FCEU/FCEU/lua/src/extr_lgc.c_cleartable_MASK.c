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
struct TYPE_5__ {int sizearray; int /*<<< orphan*/ * gclist; int /*<<< orphan*/ * array; int /*<<< orphan*/  marked; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  KEYWEAKBIT ; 
 int /*<<< orphan*/  VALUEWEAKBIT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11 (GCObject *l) {
  while (l) {
    Table *h = FUNC0(l);
    int i = h->sizearray;
    FUNC5(FUNC9(h->marked, VALUEWEAKBIT) ||
               FUNC9(h->marked, KEYWEAKBIT));
    if (FUNC9(h->marked, VALUEWEAKBIT)) {
      while (i--) {
        TValue *o = &h->array[i];
        if (FUNC3(o, 0))  /* value was collected? */
          FUNC7(o);  /* remove value */
      }
    }
    i = FUNC8(h);
    while (i--) {
      Node *n = FUNC1(h, i);
      if (!FUNC10(FUNC2(n)) &&  /* non-empty entry? */
          (FUNC3(FUNC4(n), 1) || FUNC3(FUNC2(n), 0))) {
        FUNC7(FUNC2(n));  /* remove value ... */
        FUNC6(n);  /* remove entry from table */
      }
    }
    l = h->gclist;
  }
}