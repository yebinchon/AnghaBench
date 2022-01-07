
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num; TYPE_1__* table; } ;
typedef TYPE_2__ huf_table ;
typedef int bit_stream ;
struct TYPE_4__ {int codelen; int value; int code; } ;


 int bit_read (int *,int,int,unsigned char**) ;
 int mirror (unsigned long,int) ;

__attribute__((used)) static void read_huftable (huf_table *h, bit_stream *bs, unsigned char **p) {
    int i, j, k, num;
    int leaflen[32];
    int leafmax;
    unsigned long codeb;

    num = bit_read (bs, 0x1F, 5, p);
    if (!num)
 return;

    leafmax = 1;
    for (i=0; i<num; i++) {
 leaflen[i] = bit_read (bs, 0x0F, 4, p);
 if (leafmax < leaflen[i])
     leafmax = leaflen[i];
    }

    codeb = 0L;
    k = 0;
    for (i=1; i<=leafmax; i++) {
 for (j=0; j<num; j++)
     if (leaflen[j] == i) {
  h->table[k].code = mirror (codeb, i);
  h->table[k].codelen = i;
  h->table[k].value = j;
  codeb++;
  k++;
     }
 codeb <<= 1;
    }

    h->num = k;
}
