
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
struct TYPE_5__ {scalar_t__ value; char const* name; TYPE_1__* section; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_4__ {scalar_t__ vma; } ;


 TYPE_2__** symbols ;
 int symcount ;

__attribute__((used)) static const char *lookup_name(bfd_vma addr)
{
  asymbol **sptr = symbols;
  int i;

  for (i = 0; i < symcount; i++) {
    asymbol *sym = *sptr++;

    if (addr == sym->value + sym->section->vma)
      return sym->name;
  }

  return ((void*)0);
}
