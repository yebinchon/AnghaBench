#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int info; } ;
struct TYPE_16__ {TYPE_2__ s; } ;
struct TYPE_18__ {int /*<<< orphan*/  k; TYPE_1__ u; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_19__ {int freereg; } ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SELF ; 
 int /*<<< orphan*/  VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 

void FUNC5 (FuncState *fs, expdesc *e, expdesc *key) {
  int func;
  FUNC3(fs, e);
  FUNC0(fs, e);
  func = fs->freereg;
  FUNC4(fs, 2);
  FUNC1(fs, OP_SELF, func, e->u.s.info, FUNC2(fs, key));
  FUNC0(fs, key);
  e->u.s.info = func;
  e->k = VNONRELOC;
}