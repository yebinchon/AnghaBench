
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {scalar_t__ chroma_format; } ;
typedef TYPE_1__ MpegEncContext ;


 scalar_t__ CHROMA_420 ;
 int mpeg1_encode_mb_internal (TYPE_1__*,int **,int,int,int) ;

void ff_mpeg1_encode_mb(MpegEncContext *s, int16_t block[8][64],
                        int motion_x, int motion_y)
{
    if (s->chroma_format == CHROMA_420)
        mpeg1_encode_mb_internal(s, block, motion_x, motion_y, 6);
    else
        mpeg1_encode_mb_internal(s, block, motion_x, motion_y, 8);
}
