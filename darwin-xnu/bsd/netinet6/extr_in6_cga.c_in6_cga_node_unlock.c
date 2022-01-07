
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cga_mutex; int cga_initialized; } ;


 int VERIFY (int ) ;
 TYPE_1__ in6_cga ;
 int lck_mtx_unlock (int *) ;

void
in6_cga_node_unlock(void)
{
 VERIFY(in6_cga.cga_initialized);
 lck_mtx_unlock(&in6_cga.cga_mutex);
}
