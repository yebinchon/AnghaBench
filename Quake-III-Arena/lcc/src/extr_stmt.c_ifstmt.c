
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ref; } ;
typedef int Swtch ;


 scalar_t__ ELSE ;
 int branch (int) ;
 int conditional (char) ;
 int definelab (int) ;
 int definept (int *) ;
 int expect (char) ;
 TYPE_1__* findlabel (int) ;
 scalar_t__ gettok () ;
 double refinc ;
 int statement (int,int ,int) ;
 scalar_t__ t ;
 int walk (int ,int ,int) ;

__attribute__((used)) static void ifstmt(int lab, int loop, Swtch swp, int lev) {
 t = gettok();
 expect('(');
 definept(((void*)0));
 walk(conditional(')'), 0, lab);
 refinc /= 2.0;
 statement(loop, swp, lev);
 if (t == ELSE) {
  branch(lab + 1);
  t = gettok();
  definelab(lab);
  statement(loop, swp, lev);
  if (findlabel(lab + 1)->ref)
   definelab(lab + 1);
 } else
  definelab(lab);
}
