
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func {struct caller* callers; } ;
struct caller {scalar_t__ caller; int count; struct caller* link; } ;
struct _bbdata {struct _bbdata* link; } ;


 struct _bbdata* _bblist ;
 scalar_t__ _caller ;
 int atexit (int ) ;
 int bbexit ;

void _prologue(struct func *callee, struct _bbdata *yylink) {
 static struct caller callers[4096];
 static int next;
 struct caller *p;

 if (!yylink->link) {
  yylink->link = _bblist;
  _bblist = yylink;
  if (next == 0)
   atexit(bbexit);
 }
 for (p = callee->callers; p; p = p->link)
  if (p->caller == _caller) {
   p->count++;
   break;
  }
 if (!p && next < sizeof callers/sizeof callers[0]) {
  p = &callers[next++];
  p->caller = _caller;
  p->count = 1;
  p->link = callee->callers;
  callee->callers = p;
 }
 _caller = 0;
}
