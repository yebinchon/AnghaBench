
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t* filter_idx; } ;
struct TYPE_5__ {TYPE_1__ fparam; int * lpc_filter; } ;
typedef TYPE_2__ DssSpContext ;


 int ** dss_sp_filter_cb ;

__attribute__((used)) static void dss_sp_unpack_filter(DssSpContext *p)
{
    int i;

    for (i = 0; i < 14; i++)
        p->lpc_filter[i] = dss_sp_filter_cb[i][p->fparam.filter_idx[i]];
}
