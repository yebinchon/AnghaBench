
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_15__ {scalar_t__ points; } ;
struct TYPE_14__ {int type; } ;
typedef int Coordinate ;


 int Aflag ;
 int apply (scalar_t__,int *,TYPE_1__**) ;
 TYPE_1__* condtree (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_8__ events ;
 TYPE_1__* expr (char) ;
 TYPE_1__* expr3 (int) ;
 int funcname (TYPE_1__*) ;
 char gettok () ;
 scalar_t__ isfunc (int ) ;
 TYPE_1__* pointer (TYPE_1__*) ;
 int src ;
 char t ;
 int warning (char*,int ) ;

__attribute__((used)) static Tree expr2(void) {
 Tree p = expr3(4);

 if (t == '?') {
  Tree l, r;
  Coordinate pts[2];
  if (Aflag > 1 && isfunc(p->type))
   warning("%s used in a conditional expression\n",
    funcname(p));
  p = pointer(p);
  t = gettok();
  pts[0] = src;
  l = pointer(expr(':'));
  pts[1] = src;
  r = pointer(expr2());
  if (events.points)
   {
    apply(events.points, &pts[0], &l);
    apply(events.points, &pts[1], &r);
   }
  p = condtree(p, l, r);
 }
 return p;
}
