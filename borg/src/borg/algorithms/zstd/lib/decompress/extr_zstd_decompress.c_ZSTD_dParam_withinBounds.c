
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_dParameter ;
struct TYPE_3__ {int lowerBound; int upperBound; int error; } ;
typedef TYPE_1__ ZSTD_bounds ;


 TYPE_1__ ZSTD_dParam_getBounds (int ) ;
 scalar_t__ ZSTD_isError (int ) ;

__attribute__((used)) static int ZSTD_dParam_withinBounds(ZSTD_dParameter dParam, int value)
{
    ZSTD_bounds const bounds = ZSTD_dParam_getBounds(dParam);
    if (ZSTD_isError(bounds.error)) return 0;
    if (value < bounds.lowerBound) return 0;
    if (value > bounds.upperBound) return 0;
    return 1;
}
