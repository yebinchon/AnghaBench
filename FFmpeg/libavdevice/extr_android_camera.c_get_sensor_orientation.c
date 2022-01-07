
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * i32; int * u8; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int sensor_orientation; int lens_facing; int camera_metadata; } ;
typedef TYPE_2__ AndroidCameraCtx ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ ACameraMetadata_const_entry ;


 int ACAMERA_LENS_FACING ;
 int ACAMERA_SENSOR_ORIENTATION ;
 int ACameraMetadata_getConstEntry (int ,int ,TYPE_4__*) ;

__attribute__((used)) static void get_sensor_orientation(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    ACameraMetadata_const_entry lens_facing;
    ACameraMetadata_const_entry sensor_orientation;

    ACameraMetadata_getConstEntry(ctx->camera_metadata,
                                  ACAMERA_LENS_FACING, &lens_facing);
    ACameraMetadata_getConstEntry(ctx->camera_metadata,
                                  ACAMERA_SENSOR_ORIENTATION, &sensor_orientation);

    ctx->lens_facing = lens_facing.data.u8[0];
    ctx->sensor_orientation = sensor_orientation.data.i32[0];
}
