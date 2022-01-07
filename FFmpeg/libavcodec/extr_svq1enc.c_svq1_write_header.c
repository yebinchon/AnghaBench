
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_width; int frame_height; int pb; } ;
typedef TYPE_1__ SVQ1EncContext ;


 int AV_PICTURE_TYPE_I ;
 int FF_ARRAY_ELEMS (scalar_t__) ;
 int ff_match_2uint16 (void*,int ,int,int) ;
 scalar_t__ ff_svq1_frame_size_table ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void svq1_write_header(SVQ1EncContext *s, int frame_type)
{
    int i;


    put_bits(&s->pb, 22, 0x20);


    put_bits(&s->pb, 8, 0x00);


    put_bits(&s->pb, 2, frame_type - 1);

    if (frame_type == AV_PICTURE_TYPE_I) {



        put_bits(&s->pb, 5, 2);

        i = ff_match_2uint16((void*)ff_svq1_frame_size_table,
                             FF_ARRAY_ELEMS(ff_svq1_frame_size_table),
                             s->frame_width, s->frame_height);
        put_bits(&s->pb, 3, i);

        if (i == 7) {
            put_bits(&s->pb, 12, s->frame_width);
            put_bits(&s->pb, 12, s->frame_height);
        }
    }


    put_bits(&s->pb, 2, 0);
}
