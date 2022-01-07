
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buf; } ;
struct TYPE_6__ {TYPE_3__ pb; } ;
typedef TYPE_1__ FlacEncodeContext ;


 int AV_CRC_16_ANSI ;
 int av_bswap16 (int ) ;
 int av_crc (int ,int ,int ,int) ;
 int av_crc_get_table (int ) ;
 int flush_put_bits (TYPE_3__*) ;
 int put_bits (TYPE_3__*,int,int) ;
 int put_bits_count (TYPE_3__*) ;

__attribute__((used)) static void write_frame_footer(FlacEncodeContext *s)
{
    int crc;
    flush_put_bits(&s->pb);
    crc = av_bswap16(av_crc(av_crc_get_table(AV_CRC_16_ANSI), 0, s->pb.buf,
                            put_bits_count(&s->pb)>>3));
    put_bits(&s->pb, 16, crc);
    flush_put_bits(&s->pb);
}
