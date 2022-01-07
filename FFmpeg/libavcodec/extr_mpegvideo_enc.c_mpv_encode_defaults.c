
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mv_penalty; } ;
struct TYPE_6__ {int* fcode_tab; scalar_t__ picture_in_gop_number; scalar_t__ input_picture_number; TYPE_1__ me; } ;
typedef TYPE_2__ MpegEncContext ;


 int MAX_MV ;
 int* default_fcode_tab ;
 int default_mv_penalty ;
 int ff_mpv_common_defaults (TYPE_2__*) ;

__attribute__((used)) static void mpv_encode_defaults(MpegEncContext *s)
{
    int i;
    ff_mpv_common_defaults(s);

    for (i = -16; i < 16; i++) {
        default_fcode_tab[i + MAX_MV] = 1;
    }
    s->me.mv_penalty = default_mv_penalty;
    s->fcode_tab = default_fcode_tab;

    s->input_picture_number = 0;
    s->picture_in_gop_number = 0;
}
