
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double h; } ;
struct TYPE_5__ {int meter; double scale_range; TYPE_1__ graph; } ;
typedef TYPE_2__ EBUR128Context ;


 double av_clipf (double,int ,double) ;

__attribute__((used)) static inline int lu_to_y(const EBUR128Context *ebur128, double v)
{
    v += 2 * ebur128->meter;
    v = av_clipf(v, 0, ebur128->scale_range);
    v = ebur128->scale_range - v;
    return v * ebur128->graph.h / ebur128->scale_range;
}
