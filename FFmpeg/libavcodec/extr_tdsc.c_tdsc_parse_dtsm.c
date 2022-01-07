
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int err_recognition; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int gbc; void* cursor_y; void* cursor_x; } ;
typedef TYPE_1__ TDSCContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_EF_EXPLODE ;
 int avpriv_request_sample (TYPE_2__*,char*,int) ;
 void* bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;
 int tdsc_load_cursor (TYPE_2__*) ;

__attribute__((used)) static int tdsc_parse_dtsm(AVCodecContext *avctx)
{
    TDSCContext *ctx = avctx->priv_data;
    int ret;
    int action = bytestream2_get_le32(&ctx->gbc);

    bytestream2_skip(&ctx->gbc, 4);

    if (action == 2 || action == 3) {

        ctx->cursor_x = bytestream2_get_le32(&ctx->gbc);
        ctx->cursor_y = bytestream2_get_le32(&ctx->gbc);


        if (action == 3) {
            ret = tdsc_load_cursor(avctx);

            if (ret < 0 && (avctx->err_recognition & AV_EF_EXPLODE))
                return ret;
        }
    } else {
        avpriv_request_sample(avctx, "Cursor action %d", action);
    }

    return 0;
}
