
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pix_fmt; } ;
typedef TYPE_1__ VDPAUPixFmtMap ;


 scalar_t__ AV_PIX_FMT_NONE ;

__attribute__((used)) static int count_pixfmts(const VDPAUPixFmtMap *map)
{
    int count = 0;
    while (map->pix_fmt != AV_PIX_FMT_NONE) {
        map++;
        count++;
    }
    return count;
}
