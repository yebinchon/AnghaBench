
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;
typedef struct TYPE_20__ TYPE_15__ ;


struct TYPE_26__ {int u; } ;
struct TYPE_22__ {TYPE_5__ v; } ;
struct TYPE_23__ {TYPE_1__ c; } ;
struct TYPE_28__ {int defined; struct TYPE_28__* up; TYPE_2__ u; int sclass; TYPE_6__* type; int scope; int name; } ;
struct entry {TYPE_7__ sym; struct entry* link; } ;
typedef TYPE_5__ Value ;
typedef TYPE_6__* Type ;
struct TYPE_25__ {TYPE_3__* sym; } ;
struct TYPE_27__ {int op; TYPE_4__ u; } ;
struct TYPE_24__ {int addressed; } ;
struct TYPE_21__ {int (* defsymbol ) (TYPE_7__*) ;} ;
struct TYPE_20__ {struct entry** buckets; TYPE_7__* all; } ;
typedef TYPE_7__* Symbol ;



 int CONSTANTS ;


 int HASHSIZE ;

 TYPE_19__* IR ;
 int NEW0 (struct entry*,int ) ;
 int PERM ;

 int STATIC ;

 int assert (int ) ;
 TYPE_15__* constants ;
 struct entry* d ;
 scalar_t__ eqtype (TYPE_6__*,TYPE_6__*,int) ;
 int equalp (struct entry*) ;
 struct entry* g ;
 struct entry* i ;
 int stub1 (TYPE_7__*) ;
 struct entry* u ;
 TYPE_6__* unqual (TYPE_6__*) ;
 int vtoa (TYPE_6__*,TYPE_5__) ;

Symbol constant(Type ty, Value v) {
 struct entry *p;
 unsigned h = v.u&(HASHSIZE-1);

 ty = unqual(ty);
 for (p = constants->buckets[h]; p; p = p->link)
  if (eqtype(ty, p->sym.type, 1))
   switch (ty->op) {
   case 130: if (equalp(i)) return &p->sym; break;
   case 128: if (equalp(u)) return &p->sym; break;
   case 132: if (equalp(d)) return &p->sym; break;
   case 131: if (equalp(g)) return &p->sym; break;
   case 133:
   case 129: if (equalp(p)) return &p->sym; break;
   default: assert(0);
   }
 NEW0(p, PERM);
 p->sym.name = vtoa(ty, v);
 p->sym.scope = CONSTANTS;
 p->sym.type = ty;
 p->sym.sclass = STATIC;
 p->sym.u.c.v = v;
 p->link = constants->buckets[h];
 p->sym.up = constants->all;
 constants->all = &p->sym;
 constants->buckets[h] = p;
 if (ty->u.sym && !ty->u.sym->addressed)
  (*IR->defsymbol)(&p->sym);
 p->sym.defined = 1;
 return &p->sym;
}
