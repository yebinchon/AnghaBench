
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {TYPE_1__* tab; } ;
struct TYPE_4__ {int hash_prefix; scalar_t__ suffix; } ;
typedef TYPE_2__ LZWEncodeState ;


 int FFMAX (int,int ) ;
 int LZW_PREFIX_FREE ;
 int hash (int ,scalar_t__) ;
 int hashNext (int,int) ;
 int hashOffset (int) ;

__attribute__((used)) static inline int findCode(LZWEncodeState * s, uint8_t c, int hash_prefix)
{
    int h = hash(FFMAX(hash_prefix, 0), c);
    int hash_offset = hashOffset(h);

    while (s->tab[h].hash_prefix != LZW_PREFIX_FREE) {
        if ((s->tab[h].suffix == c)
            && (s->tab[h].hash_prefix == hash_prefix))
            return h;
        h = hashNext(h, hash_offset);
    }

    return h;
}
