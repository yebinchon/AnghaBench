
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef TYPE_1__ TiffGeoTagKeyName ;



__attribute__((used)) static int cmp_id_key(const void *id, const void *k)
{
    return *(const int*)id - ((const TiffGeoTagKeyName*)k)->key;
}
