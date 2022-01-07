
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int fr_cur_mode; int fr_quality; } ;
typedef TYPE_1__ AMRWBContext ;



__attribute__((used)) static int decode_mime_header(AMRWBContext *ctx, const uint8_t *buf)
{

    ctx->fr_cur_mode = buf[0] >> 3 & 0x0F;
    ctx->fr_quality = (buf[0] & 0x4) == 0x4;

    return 1;
}
