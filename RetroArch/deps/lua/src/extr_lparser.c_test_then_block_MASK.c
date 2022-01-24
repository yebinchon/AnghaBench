#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int f; int /*<<< orphan*/  t; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_15__ {scalar_t__ token; } ;
struct TYPE_17__ {TYPE_1__ t; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_3__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BlockCnt ;

/* Variables and functions */
 scalar_t__ TK_BREAK ; 
 scalar_t__ TK_ELSE ; 
 scalar_t__ TK_ELSEIF ; 
 scalar_t__ TK_GOTO ; 
 int /*<<< orphan*/  TK_THEN ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*,char) ; 

__attribute__((used)) static void FUNC14 (LexState *ls, int *escapelist) {
  /* test_then_block -> [IF | ELSEIF] cond THEN block */
  BlockCnt bl;
  FuncState *fs = ls->fs;
  expdesc v;
  int jf;  /* instruction to skip 'then' code (if condition is false) */
  FUNC11(ls);  /* skip IF or ELSEIF */
  FUNC3(ls, &v);  /* read condition */
  FUNC1(ls, TK_THEN);
  if (ls->t.token == TK_GOTO || ls->t.token == TK_BREAK) {
    FUNC7(ls->fs, &v);  /* will jump to label if condition is true */
    FUNC2(fs, &bl, 0);  /* must enter block before 'goto' */
    FUNC4(ls, v.t);  /* handle goto/break */
    while (FUNC13(ls, ';')) {}  /* skip colons */
    if (FUNC0(ls, 0)) {  /* 'goto' is the entire block? */
      FUNC5(fs);
      return;  /* and that is it */
    }
    else  /* must skip over 'then' part if condition is false */
      jf = FUNC9(fs);
  }
  else {  /* regular case (not goto/break) */
    FUNC8(ls->fs, &v);  /* skip over block if condition is false */
    FUNC2(fs, &bl, 0);
    jf = v.f;
  }
  FUNC12(ls);  /* 'then' part */
  FUNC5(fs);
  if (ls->t.token == TK_ELSE ||
      ls->t.token == TK_ELSEIF)  /* followed by 'else'/'elseif'? */
    FUNC6(fs, escapelist, FUNC9(fs));  /* must jump over it */
  FUNC10(fs, jf);
}