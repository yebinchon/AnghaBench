
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* table_mv_index; int* table_mv_bits; int* table_mv_code; int n; } ;
struct TYPE_5__ {size_t mv_table_index; int pb; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ MVTable ;


 TYPE_2__* ff_mv_tables ;
 int put_bits (int *,int,int) ;

void ff_msmpeg4_encode_motion(MpegEncContext * s,
                                  int mx, int my)
{
    int code;
    MVTable *mv;




    if (mx <= -64)
        mx += 64;
    else if (mx >= 64)
        mx -= 64;
    if (my <= -64)
        my += 64;
    else if (my >= 64)
        my -= 64;

    mx += 32;
    my += 32;
    mv = &ff_mv_tables[s->mv_table_index];

    code = mv->table_mv_index[(mx << 6) | my];
    put_bits(&s->pb,
             mv->table_mv_bits[code],
             mv->table_mv_code[code]);
    if (code == mv->n) {

        put_bits(&s->pb, 6, mx);
        put_bits(&s->pb, 6, my);
    }
}
