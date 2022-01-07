
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int * Type ;
typedef TYPE_2__* Tree ;
struct TYPE_38__ {scalar_t__ scope; int name; scalar_t__ generated; scalar_t__ computed; } ;
struct TYPE_37__ {int type; TYPE_1__** kids; } ;
struct TYPE_36__ {int type; } ;
struct TYPE_35__ {scalar_t__ returns; } ;
struct TYPE_34__ {TYPE_2__** kids; } ;
typedef TYPE_3__* Symbol ;


 int ASGN ;
 int AUTO ;
 scalar_t__ B ;
 scalar_t__ CALL ;
 scalar_t__ PARAM ;
 int RET ;
 scalar_t__ RIGHT ;
 int addlocal (TYPE_3__*) ;
 int apply (scalar_t__,TYPE_21__*,TYPE_2__*) ;
 TYPE_2__* asgn (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* asgntree (int ,TYPE_2__*,TYPE_2__*) ;
 int * assign (char*,TYPE_2__*) ;
 TYPE_2__* cast (TYPE_2__*,int *) ;
 TYPE_21__* cfunc ;
 int error (char*,int ,char*) ;
 TYPE_20__ events ;
 char* freturn (int ) ;
 TYPE_3__* genident (int ,int ,int ) ;
 TYPE_2__* idtree (TYPE_3__*) ;
 scalar_t__ iscallb (TYPE_2__*) ;
 int isfloat (int ) ;
 scalar_t__ isptr (int ) ;
 int level ;
 TYPE_3__* localaddr (TYPE_2__*) ;
 scalar_t__ mkop (int ,int ) ;
 TYPE_2__* pointer (TYPE_2__*) ;
 int * promote (int ) ;
 TYPE_3__* retv ;
 TYPE_2__* rvalue (TYPE_2__*) ;
 TYPE_2__* tree (scalar_t__,int ,TYPE_2__*,TYPE_2__*) ;
 int walk (TYPE_2__*,int ,int ) ;
 int warning (char*,char*,...) ;

void retcode(Tree p) {
 Type ty;

 if (p == ((void*)0)) {
  if (events.returns)
   apply(events.returns, cfunc, ((void*)0));
  return;
 }
 p = pointer(p);
 ty = assign(freturn(cfunc->type), p);
 if (ty == ((void*)0)) {
  error("illegal return type; found `%t' expected `%t'\n",
   p->type, freturn(cfunc->type));
  return;
 }
 p = cast(p, ty);
 if (retv)
  {
   if (iscallb(p))
    p = tree(RIGHT, p->type,
     tree(CALL+B, p->type,
      p->kids[0]->kids[0], idtree(retv)),
     rvalue(idtree(retv)));
   else
    p = asgntree(ASGN, rvalue(idtree(retv)), p);
   walk(p, 0, 0);
   if (events.returns)
    apply(events.returns, cfunc, rvalue(idtree(retv)));
   return;
  }
 if (events.returns)
  {
   Symbol t1 = genident(AUTO, p->type, level);
   addlocal(t1);
   walk(asgn(t1, p), 0, 0);
   apply(events.returns, cfunc, idtree(t1));
   p = idtree(t1);
  }
 if (!isfloat(p->type))
  p = cast(p, promote(p->type));
 if (isptr(p->type))
  {
   Symbol q = localaddr(p);
   if (q && (q->computed || q->generated))
    warning("pointer to a %s is an illegal return value\n",
     q->scope == PARAM ? "parameter" : "local");
   else if (q)
    warning("pointer to %s `%s' is an illegal return value\n",
     q->scope == PARAM ? "parameter" : "local", q->name);
  }
 walk(tree(mkop(RET,p->type), p->type, p, ((void*)0)), 0, 0);
}
