
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {int logical_pos; } ;
typedef TYPE_1__ CacheEntry ;


 int FFDIFFSIGN (int const,int ) ;

__attribute__((used)) static int cmp(const void *key, const void *node)
{
    return FFDIFFSIGN(*(const int64_t *)key, ((const CacheEntry *) node)->logical_pos);
}
