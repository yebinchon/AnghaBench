
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nb_exclude_addrs; scalar_t__ nb_include_addrs; int include_addrs; int exclude_addrs; } ;
typedef TYPE_1__ IPSourceFilters ;


 int av_freep (int *) ;

void ff_ip_reset_filters(IPSourceFilters *filters)
{
    av_freep(&filters->exclude_addrs);
    av_freep(&filters->include_addrs);
    filters->nb_include_addrs = 0;
    filters->nb_exclude_addrs = 0;
}
