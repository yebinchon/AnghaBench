
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ref; } ;
typedef int Swtch ;


 char WHILE ;
 int conditional (char) ;
 int definelab (int) ;
 int definept (int *) ;
 int expect (char) ;
 TYPE_1__* findlabel (int) ;
 int gettok () ;
 double refinc ;
 int statement (int,int ,int) ;
 int t ;
 int walk (int ,int,int ) ;

__attribute__((used)) static void dostmt(int lab, Swtch swp, int lev) {
 refinc *= 10.0;
 t = gettok();
 definelab(lab);
 statement(lab, swp, lev);
 definelab(lab + 1);
 expect(WHILE);
 expect('(');
 definept(((void*)0));
 walk(conditional(')'), lab, 0);
 if (findlabel(lab + 2)->ref)
  definelab(lab + 2);
}
