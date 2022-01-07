
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AVCOL_RANGE_JPEG ;





__attribute__((used)) static const char * color_format_range(enum AVPixelFormat format, int range)
{
    switch (format)
    {
        case 131:
        case 130:
        case 128:
        case 129:
            return "full";
        default:
            return range == AVCOL_RANGE_JPEG ? "full" : "limited";
    }
}
