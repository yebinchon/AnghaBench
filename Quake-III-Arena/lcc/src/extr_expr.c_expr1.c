
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* Tree ;


 scalar_t__ ASGN ;


 void* asgntree (scalar_t__,void*,int ) ;
 int expect (char) ;
 void* expr2 () ;
 char gettok () ;
 void* incr (int,void*,void*) ;
 scalar_t__* oper ;
 int* prec ;
 char t ;
 int test (int,char*) ;
 int value (void*) ;

Tree expr1(int tok) {
 static char stop[] = { 128, 129, 0 };
 Tree p = expr2();

 if (t == '='
 || (prec[t] >= 6 && prec[t] <= 8)
 || (prec[t] >= 11 && prec[t] <= 13)) {
  int op = t;
  t = gettok();
  if (oper[op] == ASGN)
   p = asgntree(ASGN, p, value(expr1(0)));
  else
   {
    expect('=');
    p = incr(op, p, expr1(0));
   }
 }
 if (tok)
  test(tok, stop);
 return p;
}
