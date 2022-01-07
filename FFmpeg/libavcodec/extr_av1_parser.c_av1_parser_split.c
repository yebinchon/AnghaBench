
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef int AVCodecContext ;
typedef TYPE_1__ AV1OBU ;


 scalar_t__ AV1_OBU_FRAME ;
 scalar_t__ AV1_OBU_FRAME_HEADER ;
 int ff_av1_extract_obu (TYPE_1__*,int const*,int,int *) ;

__attribute__((used)) static int av1_parser_split(AVCodecContext *avctx,
                            const uint8_t *buf, int buf_size)
{
    AV1OBU obu;
    const uint8_t *ptr = buf, *end = buf + buf_size;

    while (ptr < end) {
        int len = ff_av1_extract_obu(&obu, ptr, buf_size, avctx);
        if (len < 0)
            break;

        if (obu.type == AV1_OBU_FRAME_HEADER ||
            obu.type == AV1_OBU_FRAME) {
            return ptr - buf;
        }
        ptr += len;
        buf_size -= len;
    }

    return 0;
}
