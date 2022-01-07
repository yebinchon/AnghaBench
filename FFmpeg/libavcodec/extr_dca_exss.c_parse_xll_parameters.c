
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int xll_size; int xll_sync_offset; scalar_t__ xll_delay_nframes; int xll_sync_present; } ;
struct TYPE_5__ {int exss_size_nbits; int gb; } ;
typedef TYPE_1__ DCAExssParser ;
typedef TYPE_2__ DCAExssAsset ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_long (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void parse_xll_parameters(DCAExssParser *s, DCAExssAsset *asset)
{

    asset->xll_size = get_bits(&s->gb, s->exss_size_nbits) + 1;


    if (asset->xll_sync_present = get_bits1(&s->gb)) {
        int xll_delay_nbits;


        skip_bits(&s->gb, 4);


        xll_delay_nbits = get_bits(&s->gb, 5) + 1;


        asset->xll_delay_nframes = get_bits_long(&s->gb, xll_delay_nbits);


        asset->xll_sync_offset = get_bits(&s->gb, s->exss_size_nbits);
    } else {
        asset->xll_delay_nframes = 0;
        asset->xll_sync_offset = 0;
    }
}
