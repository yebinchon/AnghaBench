
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gb; } ;
typedef TYPE_1__ WebPContext ;
struct TYPE_6__ {int nb_symbols; int simple; void** simple_symbols; } ;
typedef TYPE_2__ HuffReader ;


 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;

__attribute__((used)) static void read_huffman_code_simple(WebPContext *s, HuffReader *hc)
{
    hc->nb_symbols = get_bits1(&s->gb) + 1;

    if (get_bits1(&s->gb))
        hc->simple_symbols[0] = get_bits(&s->gb, 8);
    else
        hc->simple_symbols[0] = get_bits1(&s->gb);

    if (hc->nb_symbols == 2)
        hc->simple_symbols[1] = get_bits(&s->gb, 8);

    hc->simple = 1;
}
