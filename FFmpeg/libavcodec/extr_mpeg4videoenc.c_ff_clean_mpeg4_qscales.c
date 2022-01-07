
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_5__ {int* qscale_table; } ;
struct TYPE_6__ {scalar_t__ pict_type; int mb_num; int* mb_index2xy; int* mb_type; TYPE_1__ current_picture; } ;
typedef TYPE_2__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 int CANDIDATE_MB_TYPE_BIDIR ;
 int CANDIDATE_MB_TYPE_DIRECT ;
 int ff_clean_h263_qscales (TYPE_2__*) ;

void ff_clean_mpeg4_qscales(MpegEncContext *s)
{
    int i;
    int8_t *const qscale_table = s->current_picture.qscale_table;

    ff_clean_h263_qscales(s);

    if (s->pict_type == AV_PICTURE_TYPE_B) {
        int odd = 0;



        for (i = 0; i < s->mb_num; i++) {
            int mb_xy = s->mb_index2xy[i];
            odd += qscale_table[mb_xy] & 1;
        }

        if (2 * odd > s->mb_num)
            odd = 1;
        else
            odd = 0;

        for (i = 0; i < s->mb_num; i++) {
            int mb_xy = s->mb_index2xy[i];
            if ((qscale_table[mb_xy] & 1) != odd)
                qscale_table[mb_xy]++;
            if (qscale_table[mb_xy] > 31)
                qscale_table[mb_xy] = 31;
        }

        for (i = 1; i < s->mb_num; i++) {
            int mb_xy = s->mb_index2xy[i];
            if (qscale_table[mb_xy] != qscale_table[s->mb_index2xy[i - 1]] &&
                (s->mb_type[mb_xy] & CANDIDATE_MB_TYPE_DIRECT)) {
                s->mb_type[mb_xy] |= CANDIDATE_MB_TYPE_BIDIR;
            }
        }
    }
}
