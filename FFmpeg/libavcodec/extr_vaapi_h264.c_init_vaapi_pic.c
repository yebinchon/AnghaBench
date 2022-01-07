
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ BottomFieldOrderCnt; scalar_t__ TopFieldOrderCnt; int flags; int picture_id; } ;
typedef TYPE_1__ VAPictureH264 ;


 int VA_INVALID_ID ;
 int VA_PICTURE_H264_INVALID ;

__attribute__((used)) static void init_vaapi_pic(VAPictureH264 *va_pic)
{
    va_pic->picture_id = VA_INVALID_ID;
    va_pic->flags = VA_PICTURE_H264_INVALID;
    va_pic->TopFieldOrderCnt = 0;
    va_pic->BottomFieldOrderCnt = 0;
}
