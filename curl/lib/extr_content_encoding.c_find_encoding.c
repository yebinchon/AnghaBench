
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * alias; int * name; } ;
typedef TYPE_1__ content_encoding ;


 TYPE_1__** encodings ;
 scalar_t__ strncasecompare (char const*,int *,size_t) ;

__attribute__((used)) static const content_encoding *find_encoding(const char *name, size_t len)
{
  const content_encoding * const *cep;

  for(cep = encodings; *cep; cep++) {
    const content_encoding *ce = *cep;
    if((strncasecompare(name, ce->name, len) && !ce->name[len]) ||
       (ce->alias && strncasecompare(name, ce->alias, len) && !ce->alias[len]))
      return ce;
  }
  return ((void*)0);
}
