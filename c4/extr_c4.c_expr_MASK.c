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
 int ADD ; 
 int ADJ ; 
 int AND ; 
 char Add ; 
 char And ; 
 char Assign ; 
 int BNZ ; 
 int BZ ; 
 char Brak ; 
 int CHAR ; 
 char Char ; 
 size_t Class ; 
 char Cond ; 
 int DIV ; 
 char Dec ; 
 char Div ; 
 int EQ ; 
 char Eq ; 
 int Fun ; 
 int GE ; 
 int GT ; 
 char Ge ; 
 int Glo ; 
 char Gt ; 
 int IMM ; 
 int INT ; 
 char Id ; 
 char Inc ; 
 char Int ; 
 int JMP ; 
 int JSR ; 
 int LC ; 
 int LE ; 
 int LEA ; 
 int LI ; 
 int LT ; 
 char Lan ; 
 char Le ; 
 int Loc ; 
 char Lor ; 
 char Lt ; 
 int MOD ; 
 int MUL ; 
 char Mod ; 
 char Mul ; 
 int NE ; 
 char Ne ; 
 char Num ; 
 int OR ; 
 char Or ; 
 int PSH ; 
 int PTR ; 
 int SC ; 
 int SHL ; 
 int SHR ; 
 int SI ; 
 int SUB ; 
 char Shl ; 
 char Shr ; 
 char Sizeof ; 
 char Sub ; 
 int Sys ; 
 size_t Type ; 
 size_t Val ; 
 int XOR ; 
 char Xor ; 
 char* data ; 
 int* e ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* id ; 
 int ival ; 
 int line ; 
 int loc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 char tk ; 
 int ty ; 

void FUNC3(int lev)
{
  int t, *d;

  if (!tk) { FUNC2("%d: unexpected eof in expression\n", line); FUNC0(-1); }
  else if (tk == Num) { *++e = IMM; *++e = ival; FUNC1(); ty = INT; }
  else if (tk == '"') {
    *++e = IMM; *++e = ival; FUNC1();
    while (tk == '"') FUNC1();
    data = (char *)((int)data + sizeof(int) & -sizeof(int)); ty = PTR;
  }
  else if (tk == Sizeof) {
    FUNC1(); if (tk == '(') FUNC1(); else { FUNC2("%d: open paren expected in sizeof\n", line); FUNC0(-1); }
    ty = INT; if (tk == Int) FUNC1(); else if (tk == Char) { FUNC1(); ty = CHAR; }
    while (tk == Mul) { FUNC1(); ty = ty + PTR; }
    if (tk == ')') FUNC1(); else { FUNC2("%d: close paren expected in sizeof\n", line); FUNC0(-1); }
    *++e = IMM; *++e = (ty == CHAR) ? sizeof(char) : sizeof(int);
    ty = INT;
  }
  else if (tk == Id) {
    d = id; FUNC1();
    if (tk == '(') {
      FUNC1();
      t = 0;
      while (tk != ')') { FUNC3(Assign); *++e = PSH; ++t; if (tk == ',') FUNC1(); }
      FUNC1();
      if (d[Class] == Sys) *++e = d[Val];
      else if (d[Class] == Fun) { *++e = JSR; *++e = d[Val]; }
      else { FUNC2("%d: bad function call\n", line); FUNC0(-1); }
      if (t) { *++e = ADJ; *++e = t; }
      ty = d[Type];
    }
    else if (d[Class] == Num) { *++e = IMM; *++e = d[Val]; ty = INT; }
    else {
      if (d[Class] == Loc) { *++e = LEA; *++e = loc - d[Val]; }
      else if (d[Class] == Glo) { *++e = IMM; *++e = d[Val]; }
      else { FUNC2("%d: undefined variable\n", line); FUNC0(-1); }
      *++e = ((ty = d[Type]) == CHAR) ? LC : LI;
    }
  }
  else if (tk == '(') {
    FUNC1();
    if (tk == Int || tk == Char) {
      t = (tk == Int) ? INT : CHAR; FUNC1();
      while (tk == Mul) { FUNC1(); t = t + PTR; }
      if (tk == ')') FUNC1(); else { FUNC2("%d: bad cast\n", line); FUNC0(-1); }
      FUNC3(Inc);
      ty = t;
    }
    else {
      FUNC3(Assign);
      if (tk == ')') FUNC1(); else { FUNC2("%d: close paren expected\n", line); FUNC0(-1); }
    }
  }
  else if (tk == Mul) {
    FUNC1(); FUNC3(Inc);
    if (ty > INT) ty = ty - PTR; else { FUNC2("%d: bad dereference\n", line); FUNC0(-1); }
    *++e = (ty == CHAR) ? LC : LI;
  }
  else if (tk == And) {
    FUNC1(); FUNC3(Inc);
    if (*e == LC || *e == LI) --e; else { FUNC2("%d: bad address-of\n", line); FUNC0(-1); }
    ty = ty + PTR;
  }
  else if (tk == '!') { FUNC1(); FUNC3(Inc); *++e = PSH; *++e = IMM; *++e = 0; *++e = EQ; ty = INT; }
  else if (tk == '~') { FUNC1(); FUNC3(Inc); *++e = PSH; *++e = IMM; *++e = -1; *++e = XOR; ty = INT; }
  else if (tk == Add) { FUNC1(); FUNC3(Inc); ty = INT; }
  else if (tk == Sub) {
    FUNC1(); *++e = IMM;
    if (tk == Num) { *++e = -ival; FUNC1(); } else { *++e = -1; *++e = PSH; FUNC3(Inc); *++e = MUL; }
    ty = INT;
  }
  else if (tk == Inc || tk == Dec) {
    t = tk; FUNC1(); FUNC3(Inc);
    if (*e == LC) { *e = PSH; *++e = LC; }
    else if (*e == LI) { *e = PSH; *++e = LI; }
    else { FUNC2("%d: bad lvalue in pre-increment\n", line); FUNC0(-1); }
    *++e = PSH;
    *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
    *++e = (t == Inc) ? ADD : SUB;
    *++e = (ty == CHAR) ? SC : SI;
  }
  else { FUNC2("%d: bad expression\n", line); FUNC0(-1); }

  while (tk >= lev) { // "precedence climbing" or "Top Down Operator Precedence" method
    t = ty;
    if (tk == Assign) {
      FUNC1();
      if (*e == LC || *e == LI) *e = PSH; else { FUNC2("%d: bad lvalue in assignment\n", line); FUNC0(-1); }
      FUNC3(Assign); *++e = ((ty = t) == CHAR) ? SC : SI;
    }
    else if (tk == Cond) {
      FUNC1();
      *++e = BZ; d = ++e;
      FUNC3(Assign);
      if (tk == ':') FUNC1(); else { FUNC2("%d: conditional missing colon\n", line); FUNC0(-1); }
      *d = (int)(e + 3); *++e = JMP; d = ++e;
      FUNC3(Cond);
      *d = (int)(e + 1);
    }
    else if (tk == Lor) { FUNC1(); *++e = BNZ; d = ++e; FUNC3(Lan); *d = (int)(e + 1); ty = INT; }
    else if (tk == Lan) { FUNC1(); *++e = BZ;  d = ++e; FUNC3(Or);  *d = (int)(e + 1); ty = INT; }
    else if (tk == Or)  { FUNC1(); *++e = PSH; FUNC3(Xor); *++e = OR;  ty = INT; }
    else if (tk == Xor) { FUNC1(); *++e = PSH; FUNC3(And); *++e = XOR; ty = INT; }
    else if (tk == And) { FUNC1(); *++e = PSH; FUNC3(Eq);  *++e = AND; ty = INT; }
    else if (tk == Eq)  { FUNC1(); *++e = PSH; FUNC3(Lt);  *++e = EQ;  ty = INT; }
    else if (tk == Ne)  { FUNC1(); *++e = PSH; FUNC3(Lt);  *++e = NE;  ty = INT; }
    else if (tk == Lt)  { FUNC1(); *++e = PSH; FUNC3(Shl); *++e = LT;  ty = INT; }
    else if (tk == Gt)  { FUNC1(); *++e = PSH; FUNC3(Shl); *++e = GT;  ty = INT; }
    else if (tk == Le)  { FUNC1(); *++e = PSH; FUNC3(Shl); *++e = LE;  ty = INT; }
    else if (tk == Ge)  { FUNC1(); *++e = PSH; FUNC3(Shl); *++e = GE;  ty = INT; }
    else if (tk == Shl) { FUNC1(); *++e = PSH; FUNC3(Add); *++e = SHL; ty = INT; }
    else if (tk == Shr) { FUNC1(); *++e = PSH; FUNC3(Add); *++e = SHR; ty = INT; }
    else if (tk == Add) {
      FUNC1(); *++e = PSH; FUNC3(Mul);
      if ((ty = t) > PTR) { *++e = PSH; *++e = IMM; *++e = sizeof(int); *++e = MUL;  }
      *++e = ADD;
    }
    else if (tk == Sub) {
      FUNC1(); *++e = PSH; FUNC3(Mul);
      if (t > PTR && t == ty) { *++e = SUB; *++e = PSH; *++e = IMM; *++e = sizeof(int); *++e = DIV; ty = INT; }
      else if ((ty = t) > PTR) { *++e = PSH; *++e = IMM; *++e = sizeof(int); *++e = MUL; *++e = SUB; }
      else *++e = SUB;
    }
    else if (tk == Mul) { FUNC1(); *++e = PSH; FUNC3(Inc); *++e = MUL; ty = INT; }
    else if (tk == Div) { FUNC1(); *++e = PSH; FUNC3(Inc); *++e = DIV; ty = INT; }
    else if (tk == Mod) { FUNC1(); *++e = PSH; FUNC3(Inc); *++e = MOD; ty = INT; }
    else if (tk == Inc || tk == Dec) {
      if (*e == LC) { *e = PSH; *++e = LC; }
      else if (*e == LI) { *e = PSH; *++e = LI; }
      else { FUNC2("%d: bad lvalue in post-increment\n", line); FUNC0(-1); }
      *++e = PSH; *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
      *++e = (tk == Inc) ? ADD : SUB;
      *++e = (ty == CHAR) ? SC : SI;
      *++e = PSH; *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
      *++e = (tk == Inc) ? SUB : ADD;
      FUNC1();
    }
    else if (tk == Brak) {
      FUNC1(); *++e = PSH; FUNC3(Assign);
      if (tk == ']') FUNC1(); else { FUNC2("%d: close bracket expected\n", line); FUNC0(-1); }
      if (t > PTR) { *++e = PSH; *++e = IMM; *++e = sizeof(int); *++e = MUL;  }
      else if (t < PTR) { FUNC2("%d: pointer type expected\n", line); FUNC0(-1); }
      *++e = ADD;
      *++e = ((ty = t - PTR) == CHAR) ? LC : LI;
    }
    else { FUNC2("%d: compiler error tk=%d\n", line, tk); FUNC0(-1); }
  }
}