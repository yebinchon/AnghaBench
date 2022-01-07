
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int gb; TYPE_3__** vlcs; int avctx; } ;
typedef TYPE_1__ MJpegDecodeContext ;


 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*,int ,int,TYPE_3__*) ;
 int get_vlc2 (int *,int ,int,int) ;
 int get_xbits (int *,int) ;

__attribute__((used)) static inline int mjpeg_decode_dc(MJpegDecodeContext *s, int dc_index)
{
    int code;
    code = get_vlc2(&s->gb, s->vlcs[0][dc_index].table, 9, 2);
    if (code < 0 || code > 16) {
        av_log(s->avctx, AV_LOG_WARNING,
               "mjpeg_decode_dc: bad vlc: %d:%d (%p)\n",
               0, dc_index, &s->vlcs[0][dc_index]);
        return 0xfffff;
    }

    if (code)
        return get_xbits(&s->gb, code);
    else
        return 0;
}
