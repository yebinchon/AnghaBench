
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cga_initialized; int cga_mutex; } ;


 int TRUE ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 TYPE_1__ in6_cga ;
 int lck_mtx_init (int *,int ,int ) ;

void
in6_cga_init(void)
{
 lck_mtx_init(&in6_cga.cga_mutex, ifa_mtx_grp, ifa_mtx_attr);
 in6_cga.cga_initialized = TRUE;
}
