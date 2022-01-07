
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; } ;
struct bsearch_key {int name_len; int name; } ;


 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int
bsearch_cmp_prefix( const void * _key, const void * _cmp)
{
    struct bsearch_key * key = (struct bsearch_key *)_key;
    struct symbol * cmp = (struct symbol *) _cmp;

    return(strncmp(key->name, cmp->name, key->name_len));
}
