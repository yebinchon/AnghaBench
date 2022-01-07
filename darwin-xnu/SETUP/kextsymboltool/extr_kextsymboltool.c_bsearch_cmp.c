
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; } ;


 int strcmp (char*,int ) ;

__attribute__((used)) static int
bsearch_cmp( const void * _key, const void * _cmp)
{
    char * key = (char *)_key;
    struct symbol * cmp = (struct symbol *) _cmp;

    return(strcmp(key, cmp->name));
}
