
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pb; TYPE_1__* avctx; scalar_t__ quarter_sample; scalar_t__ max_b_frames; } ;
struct TYPE_4__ {int profile; int level; } ;
typedef TYPE_2__ MpegEncContext ;


 int FF_LEVEL_UNKNOWN ;
 int FF_PROFILE_UNKNOWN ;
 int VISUAL_OBJ_STARTCODE ;
 int VOS_STARTCODE ;
 int ff_mpeg4_stuffing (int *) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void mpeg4_encode_visual_object_header(MpegEncContext *s)
{
    int profile_and_level_indication;
    int vo_ver_id;

    if (s->avctx->profile != FF_PROFILE_UNKNOWN) {
        profile_and_level_indication = s->avctx->profile << 4;
    } else if (s->max_b_frames || s->quarter_sample) {
        profile_and_level_indication = 0xF0;
    } else {
        profile_and_level_indication = 0x00;
    }

    if (s->avctx->level != FF_LEVEL_UNKNOWN)
        profile_and_level_indication |= s->avctx->level;
    else
        profile_and_level_indication |= 1;

    if (profile_and_level_indication >> 4 == 0xF)
        vo_ver_id = 5;
    else
        vo_ver_id = 1;



    put_bits(&s->pb, 16, 0);
    put_bits(&s->pb, 16, VOS_STARTCODE);

    put_bits(&s->pb, 8, profile_and_level_indication);

    put_bits(&s->pb, 16, 0);
    put_bits(&s->pb, 16, VISUAL_OBJ_STARTCODE);

    put_bits(&s->pb, 1, 1);
    put_bits(&s->pb, 4, vo_ver_id);
    put_bits(&s->pb, 3, 1);

    put_bits(&s->pb, 4, 1);

    put_bits(&s->pb, 1, 0);

    ff_mpeg4_stuffing(&s->pb);
}
