#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {TYPE_2__* fs; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LOADK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char) ; 

__attribute__((used)) static void FUNC9 (LexState *ls, TString *varname, int line) {
  /* fornum -> NAME = exp1,exp1[,exp1] forbody */
  FuncState *fs = ls->fs;
  int base = fs->freereg;
  FUNC7(ls, "(for index)", 0);
  FUNC7(ls, "(for limit)", 1);
  FUNC7(ls, "(for step)", 2);
  FUNC6(ls, varname, 3);
  FUNC0(ls, '=');
  FUNC1(ls);  /* initial value */
  FUNC0(ls, ',');
  FUNC1(ls);  /* limit */
  if (FUNC8(ls, ','))
    FUNC1(ls);  /* optional step */
  else {  /* default step = 1 */
    FUNC3(fs, OP_LOADK, fs->freereg, FUNC4(fs, 1));
    FUNC5(fs, 1);
  }
  FUNC2(ls, base, line, 1, 1);
}