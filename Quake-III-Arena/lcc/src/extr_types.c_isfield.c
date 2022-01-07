
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; struct TYPE_4__* link; } ;
typedef TYPE_1__* Field ;



__attribute__((used)) static Field isfield(const char *name, Field flist) {
 for ( ; flist; flist = flist->link)
  if (flist->name == name)
   break;
 return flist;
}
