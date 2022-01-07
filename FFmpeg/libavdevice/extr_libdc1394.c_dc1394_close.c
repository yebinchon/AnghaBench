
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dc1394_data {int d; int camera; } ;
struct TYPE_3__ {struct dc1394_data* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int DC1394_OFF ;
 int dc1394_camera_free (int ) ;
 int dc1394_capture_stop (int ) ;
 int dc1394_free (int ) ;
 int dc1394_video_set_transmission (int ,int ) ;

__attribute__((used)) static int dc1394_close(AVFormatContext * context)
{
    struct dc1394_data *dc1394 = context->priv_data;

    dc1394_video_set_transmission(dc1394->camera, DC1394_OFF);
    dc1394_capture_stop(dc1394->camera);
    dc1394_camera_free(dc1394->camera);
    dc1394_free(dc1394->d);

    return 0;
}
