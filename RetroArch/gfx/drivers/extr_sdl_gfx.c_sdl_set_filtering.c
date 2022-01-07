
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scaler_type; } ;
struct TYPE_4__ {TYPE_1__ scaler; } ;
typedef TYPE_2__ sdl_video_t ;


 int SCALER_TYPE_BILINEAR ;
 int SCALER_TYPE_POINT ;

__attribute__((used)) static void sdl_set_filtering(void *data, unsigned index, bool smooth)
{
   sdl_video_t *vid = (sdl_video_t*)data;
   vid->scaler.scaler_type = smooth ? SCALER_TYPE_BILINEAR : SCALER_TYPE_POINT;
}
