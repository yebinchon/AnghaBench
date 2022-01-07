
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_buckets; } ;
typedef TYPE_1__ HashIndex ;


 int _le32toh (int ) ;

__attribute__((used)) static int
hashindex_index(HashIndex *index, const unsigned char *key)
{
    return _le32toh(*((uint32_t *)key)) % index->num_buckets;
}
