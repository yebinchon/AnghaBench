
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bits; int tabsize; TYPE_1__* tab; int clear_code; } ;
struct TYPE_5__ {int code; int suffix; int hash_prefix; } ;
typedef TYPE_2__ LZWEncodeState ;


 int LZW_HASH_SIZE ;
 int LZW_PREFIX_EMPTY ;
 int LZW_PREFIX_FREE ;
 int hash (int ,int) ;
 int writeCode (TYPE_2__*,int ) ;

__attribute__((used)) static void clearTable(LZWEncodeState * s)
{
    int i, h;

    writeCode(s, s->clear_code);
    s->bits = 9;
    for (i = 0; i < LZW_HASH_SIZE; i++) {
        s->tab[i].hash_prefix = LZW_PREFIX_FREE;
    }
    for (i = 0; i < 256; i++) {
        h = hash(0, i);
        s->tab[h].code = i;
        s->tab[h].suffix = i;
        s->tab[h].hash_prefix = LZW_PREFIX_EMPTY;
    }
    s->tabsize = 258;
}
