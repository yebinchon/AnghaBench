
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_dParameter ;
struct TYPE_3__ {int lowerBound; int upperBound; int error; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ZSTD_bounds ;


 int ERROR (int ) ;
 int ZSTD_STATIC_ASSERT (int) ;
 int ZSTD_WINDOWLOG_ABSOLUTEMIN ;
 int ZSTD_WINDOWLOG_MAX ;


 scalar_t__ ZSTD_f_zstd1 ;
 scalar_t__ ZSTD_f_zstd1_magicless ;
 int parameter_unsupported ;

ZSTD_bounds ZSTD_dParam_getBounds(ZSTD_dParameter dParam)
{
    ZSTD_bounds bounds = { 0, 0, 0 };
    switch(dParam) {
        case 128:
            bounds.lowerBound = ZSTD_WINDOWLOG_ABSOLUTEMIN;
            bounds.upperBound = ZSTD_WINDOWLOG_MAX;
            return bounds;
        case 129:
            bounds.lowerBound = (int)ZSTD_f_zstd1;
            bounds.upperBound = (int)ZSTD_f_zstd1_magicless;
            ZSTD_STATIC_ASSERT(ZSTD_f_zstd1 < ZSTD_f_zstd1_magicless);
            return bounds;
        default:;
    }
    bounds.error = ERROR(parameter_unsupported);
    return bounds;
}
