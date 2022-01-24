#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  s; } ;
struct TYPE_9__ {TYPE_3__* cap; int /*<<< orphan*/  L; } ;
struct TYPE_8__ {int /*<<< orphan*/  e; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ StrAux ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 scalar_t__ Csimple ; 
 int MAXSTRCAPS ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5 (CapState *cs, StrAux *cps, int n) {
  int k = n++;
  if (k < MAXSTRCAPS) cps[k].s = cs->cap->s;
  if (!FUNC3(cs->cap++)) {
    while (!FUNC2(cs->cap)) {
      if (FUNC0(cs->cap) != Csimple)
        return FUNC4(cs->L,
                          "invalid capture #%d in replacement pattern", n);
      n = FUNC5(cs, cps, n);
    }
    cs->cap++;  /* skip close */
  }
  if (k < MAXSTRCAPS) cps[k].e = FUNC1(cs->cap - 1);
  return n;
}