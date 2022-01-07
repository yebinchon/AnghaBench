
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {int size; } ;
struct TYPE_12__ {TYPE_3__** callee; } ;
struct TYPE_13__ {TYPE_1__ f; } ;
struct TYPE_14__ {char* name; TYPE_4__* type; TYPE_2__ u; } ;
struct TYPE_11__ {int (* space ) (int ) ;} ;
typedef TYPE_3__* Symbol ;


 int AUTO ;
 int BSS ;
 int GLOBAL ;
 int INCR ;
 TYPE_10__* IR ;
 int STATIC ;
 int addlocal (void*) ;
 int appendstr (char*) ;
 int asgn (void*,int ) ;
 int consttree (int,int ) ;
 int defglobal (TYPE_3__*,int ) ;
 void* frameno ;
 void* genident (int ,int ,int ) ;
 int idtree (TYPE_3__*) ;
 int incr (int ,int ,int ) ;
 int inttype ;
 int level ;
 int stub1 (int ) ;
 int tracefinis (TYPE_3__*) ;
 int tracevalue (int ,int ) ;
 scalar_t__ variadic (TYPE_4__*) ;

__attribute__((used)) static void tracecall(Symbol printer, Symbol f) {
 int i;
 Symbol counter = genident(STATIC, inttype, GLOBAL);

 defglobal(counter, BSS);
 (*IR->space)(counter->type->size);
 frameno = genident(AUTO, inttype, level);
 addlocal(frameno);
 appendstr(f->name); appendstr("#");
 tracevalue(asgn(frameno, incr(INCR, idtree(counter), consttree(1, inttype))), 0);
 appendstr("(");
 for (i = 0; f->u.f.callee[i]; i++) {
  if (i)
   appendstr(",");
  appendstr(f->u.f.callee[i]->name); appendstr("=");
  tracevalue(idtree(f->u.f.callee[i]), 0);
 }
 if (variadic(f->type))
  appendstr(",...");
 appendstr(") called\n");
 tracefinis(printer);
}
