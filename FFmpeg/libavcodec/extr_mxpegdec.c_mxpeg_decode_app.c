
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int gb; } ;
struct TYPE_5__ {TYPE_1__ jpg; } ;
typedef TYPE_2__ MXpegDecodeContext ;


 int AV_RB16 (int const*) ;
 int FFMIN (int,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int mxpeg_decode_app(MXpegDecodeContext *s,
                            const uint8_t *buf_ptr, int buf_size)
{
    int len;
    if (buf_size < 2)
        return 0;
    len = AV_RB16(buf_ptr);
    skip_bits(&s->jpg.gb, 8*FFMIN(len,buf_size));

    return 0;
}
