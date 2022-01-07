
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subband_num_actual; scalar_t__ level; scalar_t__ subband_num; } ;
typedef TYPE_1__ CFHDContext ;



__attribute__((used)) static void init_plane_defaults(CFHDContext *s)
{
    s->subband_num = 0;
    s->level = 0;
    s->subband_num_actual = 0;
}
