
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; } ;
struct TYPE_5__ {int hsub; } ;
typedef TYPE_1__ FieldMatchContext ;
typedef TYPE_2__ AVFrame ;


 int AV_CEIL_RSHIFT (int,int ) ;

__attribute__((used)) static int get_width(const FieldMatchContext *fm, const AVFrame *f, int plane)
{
    return plane ? AV_CEIL_RSHIFT(f->width, fm->hsub) : f->width;
}
