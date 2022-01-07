
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pic_order_cnt; int flags; int picture_id; } ;
typedef TYPE_1__ VAPictureHEVC ;


 int VA_INVALID_ID ;
 int VA_PICTURE_HEVC_INVALID ;

__attribute__((used)) static void init_vaapi_pic(VAPictureHEVC *va_pic)
{
    va_pic->picture_id = VA_INVALID_ID;
    va_pic->flags = VA_PICTURE_HEVC_INVALID;
    va_pic->pic_order_cnt = 0;
}
