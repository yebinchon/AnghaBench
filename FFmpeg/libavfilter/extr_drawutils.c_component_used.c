
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* comp_mask; } ;
typedef TYPE_1__ FFDrawContext ;



__attribute__((used)) static int component_used(FFDrawContext *draw, int plane, int comp)
{
    return (draw->comp_mask[plane] >> comp) & 1;
}
