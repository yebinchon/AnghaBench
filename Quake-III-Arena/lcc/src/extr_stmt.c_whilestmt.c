
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * Tree ;
struct TYPE_2__ {scalar_t__ ref; } ;
typedef int Swtch ;
typedef int Coordinate ;


 int FUNC ;
 int branch (int) ;
 int conditional ;
 int definelab (int) ;
 int definept (int *) ;
 int expect (char) ;
 TYPE_1__* findlabel (int) ;
 int gettok () ;
 double refinc ;
 int src ;
 int statement (int,int ,int) ;
 int t ;
 int * texpr (int ,char,int ) ;
 int walk (int *,int,int ) ;

__attribute__((used)) static void whilestmt(int lab, Swtch swp, int lev) {
 Coordinate pt;
 Tree e;

 refinc *= 10.0;
 t = gettok();
 expect('(');
 walk(((void*)0), 0, 0);
 pt = src;
 e = texpr(conditional, ')', FUNC);
 branch(lab + 1);
 definelab(lab);
 statement(lab, swp, lev);
 definelab(lab + 1);
 definept(&pt);
 walk(e, lab, 0);
 if (findlabel(lab + 2)->ref)
  definelab(lab + 2);
}
