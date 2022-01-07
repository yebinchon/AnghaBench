
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cga_mutex; int cga_initialized; } ;


 int LCK_MTX_ASSERT (int *,int) ;
 int VERIFY (int ) ;
 TYPE_1__ in6_cga ;

__attribute__((used)) static void
in6_cga_node_lock_assert(int owned)
{

#pragma unused(owned)

 VERIFY(in6_cga.cga_initialized);
 LCK_MTX_ASSERT(&in6_cga.cga_mutex, owned);
}
