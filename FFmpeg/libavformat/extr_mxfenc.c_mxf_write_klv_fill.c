
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int KAG_SIZE ;
 int av_assert1 (int) ;
 int avio_tell (int ) ;
 int avio_write (int ,int ,int) ;
 int ffio_fill (int ,int ,unsigned int) ;
 int klv_encode_ber4_length (int ,unsigned int) ;
 int klv_fill_key ;
 unsigned int klv_fill_size (int) ;

__attribute__((used)) static void mxf_write_klv_fill(AVFormatContext *s)
{
    unsigned pad = klv_fill_size(avio_tell(s->pb));
    if (pad) {
        avio_write(s->pb, klv_fill_key, 16);
        pad -= 16 + 4;
        klv_encode_ber4_length(s->pb, pad);
        ffio_fill(s->pb, 0, pad);
        av_assert1(!(avio_tell(s->pb) & (KAG_SIZE-1)));
    }
}
