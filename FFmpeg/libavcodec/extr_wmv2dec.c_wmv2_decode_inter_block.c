
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_8__ {int const* permutated; } ;
struct TYPE_10__ {int* block_last_index; TYPE_2__ inter_scantable; int gb; } ;
struct TYPE_9__ {size_t abt_type; size_t* abt_type_table; int ** abt_block2; TYPE_1__* abt_scantable; scalar_t__ per_block_abt; TYPE_4__ s; } ;
typedef TYPE_3__ Wmv2Context ;
struct TYPE_7__ {int * scantable; } ;
typedef TYPE_4__ MpegEncContext ;


 size_t decode012 (int *) ;
 int ff_msmpeg4_decode_block (TYPE_4__* const,int *,int,int,int const*) ;

__attribute__((used)) static inline int wmv2_decode_inter_block(Wmv2Context *w, int16_t *block,
                                          int n, int cbp)
{
    MpegEncContext *const s = &w->s;
    static const int sub_cbp_table[3] = { 2, 3, 1 };
    int sub_cbp, ret;

    if (!cbp) {
        s->block_last_index[n] = -1;
        return 0;
    }

    if (w->per_block_abt)
        w->abt_type = decode012(&s->gb);
    w->abt_type_table[n] = w->abt_type;

    if (w->abt_type) {

        const uint8_t *scantable = w->abt_scantable[w->abt_type - 1].scantable;


        sub_cbp = sub_cbp_table[decode012(&s->gb)];

        if (sub_cbp & 1)
            if ((ret = ff_msmpeg4_decode_block(s, block, n, 1, scantable)) < 0)
                return ret;

        if (sub_cbp & 2)
            if ((ret = ff_msmpeg4_decode_block(s, w->abt_block2[n], n, 1, scantable)) < 0)
                return ret;

        s->block_last_index[n] = 63;

        return 0;
    } else {
        return ff_msmpeg4_decode_block(s, block, n, 1,
                                       s->inter_scantable.permutated);
    }
}
