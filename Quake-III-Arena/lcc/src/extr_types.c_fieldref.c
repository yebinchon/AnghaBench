
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_8__ {TYPE_4__* sym; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct TYPE_6__ {int ftab; int flist; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef int Symbol ;
typedef scalar_t__ Field ;


 int assert (int ) ;
 scalar_t__ isfield (char const*,int ) ;
 int lookup (char const*,int ) ;
 int src ;
 TYPE_5__* unqual (int ) ;
 int use (int ,int ) ;
 scalar_t__ xref ;

Field fieldref(const char *name, Type ty) {
 Field p = isfield(name, unqual(ty)->u.sym->u.s.flist);

 if (p && xref) {
  Symbol q;
  assert(unqual(ty)->u.sym->u.s.ftab);
  q = lookup(name, unqual(ty)->u.sym->u.s.ftab);
  assert(q);
  use(q, src);
 }
 return p;
}
