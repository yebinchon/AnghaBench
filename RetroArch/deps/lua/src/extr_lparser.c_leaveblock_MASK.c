#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ nactvar; size_t firstgoto; struct TYPE_21__* previous; int /*<<< orphan*/  firstlabel; scalar_t__ isloop; scalar_t__ upval; } ;
struct TYPE_20__ {scalar_t__ nactvar; scalar_t__ freereg; TYPE_6__* bl; TYPE_4__* ls; } ;
struct TYPE_19__ {TYPE_3__* dyd; } ;
struct TYPE_17__ {size_t n; int /*<<< orphan*/ * arr; } ;
struct TYPE_16__ {int /*<<< orphan*/  n; } ;
struct TYPE_18__ {TYPE_2__ gt; TYPE_1__ label; } ;
typedef  TYPE_4__ LexState ;
typedef  TYPE_5__ FuncState ;
typedef  TYPE_6__ BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (FuncState *fs) {
  BlockCnt *bl = fs->bl;
  LexState *ls = fs->ls;
  if (bl->previous && bl->upval) {
    /* create a 'jump to here' to close upvalues */
    int j = FUNC1(fs);
    FUNC2(fs, j, bl->nactvar);
    FUNC3(fs, j);
  }
  if (bl->isloop)
    FUNC0(ls);  /* close pending breaks */
  fs->bl = bl->previous;
  FUNC6(fs, bl->nactvar);
  FUNC4(bl->nactvar == fs->nactvar);
  fs->freereg = fs->nactvar;  /* free registers */
  ls->dyd->label.n = bl->firstlabel;  /* remove local labels */
  if (bl->previous)  /* inner block? */
    FUNC5(fs, bl);  /* update pending gotos to outer block */
  else if (bl->firstgoto < ls->dyd->gt.n)  /* pending gotos in outer block? */
    FUNC7(ls, &ls->dyd->gt.arr[bl->firstgoto]);  /* error */
}