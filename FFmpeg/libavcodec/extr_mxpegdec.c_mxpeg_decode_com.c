
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int gb; } ;
struct TYPE_6__ {TYPE_1__ jpg; } ;
typedef TYPE_2__ MXpegDecodeContext ;


 int AV_RB16 (int const*) ;
 int FFMIN (int,int) ;
 int mxpeg_decode_mxm (TYPE_2__*,int const*,int) ;
 int skip_bits (int *,int) ;
 int strncmp (int const*,char*,int) ;

__attribute__((used)) static int mxpeg_decode_com(MXpegDecodeContext *s,
                            const uint8_t *buf_ptr, int buf_size)
{
    int len, ret = 0;
    if (buf_size < 2)
        return 0;
    len = AV_RB16(buf_ptr);
    if (len > 14 && len <= buf_size && !strncmp(buf_ptr + 2, "MXM", 3)) {
        ret = mxpeg_decode_mxm(s, buf_ptr + 2, len - 2);
    }
    skip_bits(&s->jpg.gb, 8*FFMIN(len,buf_size));

    return ret;
}
