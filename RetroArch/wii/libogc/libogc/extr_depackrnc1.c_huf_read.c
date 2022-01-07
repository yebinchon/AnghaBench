
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num; TYPE_1__* table; } ;
typedef TYPE_2__ huf_table ;
typedef int bit_stream ;
struct TYPE_4__ {int codelen; scalar_t__ code; unsigned long value; } ;


 int bit_advance (int *,int,unsigned char**) ;
 scalar_t__ bit_peek (int *,unsigned long) ;
 unsigned long bit_read (int *,unsigned long,int,unsigned char**) ;

__attribute__((used)) static unsigned long huf_read (huf_table *h, bit_stream *bs,
          unsigned char **p) {
    int i;
    unsigned long val;

    for (i=0; i<h->num; i++) {
 unsigned long mask = (1 << h->table[i].codelen) - 1;
 if (bit_peek(bs, mask) == h->table[i].code)
     break;
    }
    if (i == h->num)
 return -1;
    bit_advance (bs, h->table[i].codelen, p);

    val = h->table[i].value;

    if (val >= 2) {
 val = 1 << (val-1);
 val |= bit_read (bs, val-1, h->table[i].value - 1, p);
    }
    return val;
}
