
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
typedef int RaPixelRange ;







 int RA_PIXEL_RANGE_FULL ;
 int RA_PIXEL_RANGE_LIMITED ;

__attribute__((used)) static inline RaPixelRange range_map(enum AVPixelFormat pix_fmt, enum AVColorRange range)
{
    switch (pix_fmt) {
    case 130:
    case 129:
    case 128:
        return RA_PIXEL_RANGE_FULL;
    }

    switch (range) {
    case 132:
        return RA_PIXEL_RANGE_FULL;
    case 131:
    default:
        return RA_PIXEL_RANGE_LIMITED;
    }
}
