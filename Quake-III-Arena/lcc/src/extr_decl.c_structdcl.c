
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* Type ;
struct TYPE_12__ {int defined; int src; } ;
struct TYPE_11__ {scalar_t__ scope; TYPE_2__* type; } ;
struct TYPE_9__ {TYPE_4__* sym; } ;
struct TYPE_10__ {int op; TYPE_1__ u; } ;
typedef TYPE_3__* Symbol ;
typedef int Coordinate ;


 char ID ;

 int error (char*,int) ;
 int fields (TYPE_2__*) ;
 char gettok () ;
 scalar_t__ istypename (char,int ) ;
 scalar_t__ level ;
 TYPE_3__* lookup (char*,int ) ;
 TYPE_2__* newstruct (int,char*) ;
 int src ;
 char t ;
 int test (char,char*) ;
 char* token ;
 int tsym ;
 int types ;
 int use (TYPE_4__*,int ) ;
 scalar_t__ xref ;

__attribute__((used)) static Type structdcl(int op) {
 char *tag;
 Type ty;
 Symbol p;
 Coordinate pos;

 t = gettok();
 pos = src;
 if (t == ID) {
  tag = token;
  t = gettok();
 } else
  tag = "";
 if (t == '{') {
  static char stop[] = { 128, ',', 0 };
  ty = newstruct(op, tag);
  ty->u.sym->src = pos;
  ty->u.sym->defined = 1;
  t = gettok();
  if (istypename(t, tsym))
   fields(ty);
  else
   error("invalid %k field declarations\n", op);
  test('}', stop);
 }
 else if (*tag && (p = lookup(tag, types)) != ((void*)0)
 && p->type->op == op) {
  ty = p->type;
  if (t == ';' && p->scope < level)
   ty = newstruct(op, tag);
 }
 else {
  if (*tag == 0)
   error("missing %k tag\n", op);
  ty = newstruct(op, tag);
 }
 if (*tag && xref)
  use(ty->u.sym, pos);
 return ty;
}
