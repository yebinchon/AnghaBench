
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int label; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_10__ {int generated; TYPE_2__ u; struct TYPE_10__* up; int scope; int name; } ;
struct entry {TYPE_3__ sym; struct entry* link; } ;
struct TYPE_12__ {int (* defsymbol ) (TYPE_3__*) ;} ;
struct TYPE_11__ {struct entry** buckets; TYPE_3__* all; } ;
typedef TYPE_3__* Symbol ;


 int FUNC ;
 int HASHSIZE ;
 TYPE_7__* IR ;
 int LABELS ;
 int NEW0 (struct entry*,int ) ;
 TYPE_5__* labels ;
 int stringd (int) ;
 int stub1 (TYPE_3__*) ;

Symbol findlabel(int lab) {
 struct entry *p;
 unsigned h = lab&(HASHSIZE-1);

 for (p = labels->buckets[h]; p; p = p->link)
  if (lab == p->sym.u.l.label)
   return &p->sym;
 NEW0(p, FUNC);
 p->sym.name = stringd(lab);
 p->sym.scope = LABELS;
 p->sym.up = labels->all;
 labels->all = &p->sym;
 p->link = labels->buckets[h];
 labels->buckets[h] = p;
 p->sym.generated = 1;
 p->sym.u.l.label = lab;
 (*IR->defsymbol)(&p->sym);
 return &p->sym;
}
