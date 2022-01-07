
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
 int expr0 ;
 TYPE_1__* findlabel (int) ;
 int foldcond (int *,int *) ;
 size_t gettok () ;
 scalar_t__* kind ;
 double refinc ;
 int src ;
 int statement (int,int ,int) ;
 size_t t ;
 int test (char,char*) ;
 int * texpr (int ,char,int ) ;
 int walk (int *,int,int ) ;

__attribute__((used)) static void forstmt(int lab, Swtch swp, int lev) {
 int once = 0;
 Tree e1 = ((void*)0), e2 = ((void*)0), e3 = ((void*)0);
 Coordinate pt2, pt3;

 t = gettok();
 expect('(');
 definept(((void*)0));
 if (kind[t] == 129)
  e1 = texpr(expr0, ';', FUNC);
 else
  expect(';');
 walk(e1, 0, 0);
 pt2 = src;
 refinc *= 10.0;
 if (kind[t] == 129)
  e2 = texpr(conditional, ';', FUNC);
 else
  expect(';');
 pt3 = src;
 if (kind[t] == 129)
  e3 = texpr(expr0, ')', FUNC);
 else {
  static char stop[] = { 128, 129, '}', 0 };
  test(')', stop);
 }
 if (e2) {
  once = foldcond(e1, e2);
  if (!once)
   branch(lab + 3);
 }
 definelab(lab);
 statement(lab, swp, lev);
 definelab(lab + 1);
 definept(&pt3);
 if (e3)
  walk(e3, 0, 0);
 if (e2) {
  if (!once)
   definelab(lab + 3);
  definept(&pt2);
  walk(e2, lab, 0);
 } else {
  definept(&pt2);
  branch(lab);
 }
 if (findlabel(lab + 2)->ref)
  definelab(lab + 2);
}
