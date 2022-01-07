
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int table; } ;
struct TYPE_5__ {int nb_symbols; int* simple_symbols; TYPE_1__ vlc; scalar_t__ simple; } ;
typedef TYPE_2__ HuffReader ;
typedef int GetBitContext ;


 size_t get_bits1 (int *) ;
 int webp_get_vlc (int *,int ) ;

__attribute__((used)) static int huff_reader_get_symbol(HuffReader *r, GetBitContext *gb)
{
    if (r->simple) {
        if (r->nb_symbols == 1)
            return r->simple_symbols[0];
        else
            return r->simple_symbols[get_bits1(gb)];
    } else
        return webp_get_vlc(gb, r->vlc.table);
}
