
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
typedef int display_matrix ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ lens_facing; int sensor_orientation; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef int AVStream ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ ACAMERA_LENS_FACING_FRONT ;
 int AVERROR (int ) ;
 int AV_PKT_DATA_DISPLAYMATRIX ;
 int ENOMEM ;
 int av_display_matrix_flip (int *,int,int ) ;
 int av_display_rotation_set (int *,int ) ;
 int * av_stream_new_side_data (int *,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int add_display_matrix(AVFormatContext *avctx, AVStream *st)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    uint8_t *side_data;
    int32_t display_matrix[9];

    av_display_rotation_set(display_matrix, ctx->sensor_orientation);

    if (ctx->lens_facing == ACAMERA_LENS_FACING_FRONT) {
        av_display_matrix_flip(display_matrix, 1, 0);
    }

    side_data = av_stream_new_side_data(st,
            AV_PKT_DATA_DISPLAYMATRIX, sizeof(display_matrix));

    if (!side_data) {
        return AVERROR(ENOMEM);
    }

    memcpy(side_data, display_matrix, sizeof(display_matrix));

    return 0;
}
