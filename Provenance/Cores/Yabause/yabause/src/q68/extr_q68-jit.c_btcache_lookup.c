
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ m68k_address; int native_offset; } ;


 TYPE_1__* btcache ;
 int btcache_index ;
 int lenof (TYPE_1__*) ;

__attribute__((used)) static int32_t btcache_lookup(uint32_t address)
{



    const int current = (btcache_index + (lenof(btcache)-1)) % lenof(btcache);
    int index = current;
    do {
        if (btcache[index].m68k_address == address) {
            return btcache[index].native_offset;
        }
        index = (index + (lenof(btcache)-1)) % lenof(btcache);
    } while (index != current);
    return -1;
}
