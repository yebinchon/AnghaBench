
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;


 unsigned int AVCOL_RANGE_NB ;
 char const** color_range_names ;

const char *av_color_range_name(enum AVColorRange range)
{
    return (unsigned) range < AVCOL_RANGE_NB ?
        color_range_names[range] : ((void*)0);
}
