
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_13__ {int table; } ;
struct TYPE_12__ {int table; } ;
struct TYPE_11__ {int table; } ;
struct TYPE_10__ {int table; } ;
struct TYPE_9__ {int msmpeg4_version; size_t dc_table_index; int y_dc_scale; int c_dc_scale; int gb; int avctx; } ;
typedef TYPE_1__ MpegEncContext ;


 int AV_LOG_ERROR ;
 int DC_MAX ;
 int DC_VLC_BITS ;
 int av_log (int ,int ,char*) ;
 TYPE_8__* ff_msmp4_dc_chroma_vlc ;
 TYPE_7__* ff_msmp4_dc_luma_vlc ;
 int ff_msmpeg4_pred_dc (TYPE_1__*,int,int**,int*) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int msmpeg4v1_pred_dc (TYPE_1__*,int,int**) ;
 TYPE_3__ v2_dc_chroma_vlc ;
 TYPE_2__ v2_dc_lum_vlc ;

__attribute__((used)) static int msmpeg4_decode_dc(MpegEncContext * s, int n, int *dir_ptr)
{
    int level, pred;

    if(s->msmpeg4_version<=2){
        if (n < 4) {
            level = get_vlc2(&s->gb, v2_dc_lum_vlc.table, DC_VLC_BITS, 3);
        } else {
            level = get_vlc2(&s->gb, v2_dc_chroma_vlc.table, DC_VLC_BITS, 3);
        }
        if (level < 0) {
            av_log(s->avctx, AV_LOG_ERROR, "illegal dc vlc\n");
            *dir_ptr = 0;
            return -1;
        }
        level-=256;
    }else{
        if (n < 4) {
            level = get_vlc2(&s->gb, ff_msmp4_dc_luma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
        } else {
            level = get_vlc2(&s->gb, ff_msmp4_dc_chroma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
        }
        if (level < 0){
            av_log(s->avctx, AV_LOG_ERROR, "illegal dc vlc\n");
            *dir_ptr = 0;
            return -1;
        }

        if (level == DC_MAX) {
            level = get_bits(&s->gb, 8);
            if (get_bits1(&s->gb))
                level = -level;
        } else if (level != 0) {
            if (get_bits1(&s->gb))
                level = -level;
        }
    }

    if(s->msmpeg4_version==1){
        int32_t *dc_val;
        pred = msmpeg4v1_pred_dc(s, n, &dc_val);
        level += pred;


        *dc_val= level;
    }else{
        int16_t *dc_val;
        pred = ff_msmpeg4_pred_dc(s, n, &dc_val, dir_ptr);
        level += pred;


        if (n < 4) {
            *dc_val = level * s->y_dc_scale;
        } else {
            *dc_val = level * s->c_dc_scale;
        }
    }

    return level;
}
