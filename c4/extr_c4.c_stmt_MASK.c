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

/* Variables and functions */
 int /*<<< orphan*/  Assign ; 
 int BZ ; 
 char Else ; 
 char If ; 
 int JMP ; 
 int LEV ; 
 char Return ; 
 char While ; 
 int* e ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int line ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char tk ; 

void FUNC4()
{
  int *a, *b;

  if (tk == If) {
    FUNC2();
    if (tk == '(') FUNC2(); else { FUNC3("%d: open paren expected\n", line); FUNC0(-1); }
    FUNC1(Assign);
    if (tk == ')') FUNC2(); else { FUNC3("%d: close paren expected\n", line); FUNC0(-1); }
    *++e = BZ; b = ++e;
    FUNC4();
    if (tk == Else) {
      *b = (int)(e + 3); *++e = JMP; b = ++e;
      FUNC2();
      FUNC4();
    }
    *b = (int)(e + 1);
  }
  else if (tk == While) {
    FUNC2();
    a = e + 1;
    if (tk == '(') FUNC2(); else { FUNC3("%d: open paren expected\n", line); FUNC0(-1); }
    FUNC1(Assign);
    if (tk == ')') FUNC2(); else { FUNC3("%d: close paren expected\n", line); FUNC0(-1); }
    *++e = BZ; b = ++e;
    FUNC4();
    *++e = JMP; *++e = (int)a;
    *b = (int)(e + 1);
  }
  else if (tk == Return) {
    FUNC2();
    if (tk != ';') FUNC1(Assign);
    *++e = LEV;
    if (tk == ';') FUNC2(); else { FUNC3("%d: semicolon expected\n", line); FUNC0(-1); }
  }
  else if (tk == '{') {
    FUNC2();
    while (tk != '}') FUNC4();
    FUNC2();
  }
  else if (tk == ';') {
    FUNC2();
  }
  else {
    FUNC1(Assign);
    if (tk == ';') FUNC2(); else { FUNC3("%d: semicolon expected\n", line); FUNC0(-1); }
  }
}