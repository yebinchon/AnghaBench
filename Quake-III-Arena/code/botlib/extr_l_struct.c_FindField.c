
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ fielddef_t ;


 int strcmp (scalar_t__,char*) ;

fielddef_t *FindField(fielddef_t *defs, char *name)
{
 int i;

 for (i = 0; defs[i].name; i++)
 {
  if (!strcmp(defs[i].name, name)) return &defs[i];
 }
 return ((void*)0);
}
