
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;


 int AVCOL_RANGE_JPEG ;

__attribute__((used)) static int get_vpx_video_full_range_flag(enum AVColorRange color_range)
{
    return color_range == AVCOL_RANGE_JPEG;
}
