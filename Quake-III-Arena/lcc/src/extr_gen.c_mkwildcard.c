
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; TYPE_2__** wildcard; } ;
struct TYPE_7__ {char* name; TYPE_1__ x; } ;
typedef TYPE_2__* Symbol ;


 int NEW0 (TYPE_2__*,int ) ;
 int PERM ;

Symbol mkwildcard(Symbol *syms) {
 Symbol p;

 NEW0(p, PERM);
 p->name = p->x.name = "wildcard";
 p->x.wildcard = syms;
 return p;
}
