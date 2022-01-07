
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;





 int ZIMG_RANGE_FULL ;
 int ZIMG_RANGE_LIMITED ;

__attribute__((used)) static int convert_range(enum AVColorRange color_range)
{
    switch (color_range) {
    case 128:
    case 129:
        return ZIMG_RANGE_LIMITED;
    case 130:
        return ZIMG_RANGE_FULL;
    }
    return ZIMG_RANGE_LIMITED;
}
