
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int keys ;
struct TYPE_5__ {char const* name; } ;
typedef TYPE_1__ TiffGeoTagKeyName ;


 TYPE_1__* bsearch (int*,TYPE_1__ const*,int,int,int ) ;
 int cmp_id_key ;

__attribute__((used)) static const char *search_keyval(const TiffGeoTagKeyName *keys, int n, int id)
{
    TiffGeoTagKeyName *r = bsearch(&id, keys, n, sizeof(keys[0]), cmp_id_key);
    if(r)
        return r->name;

    return ((void*)0);
}
