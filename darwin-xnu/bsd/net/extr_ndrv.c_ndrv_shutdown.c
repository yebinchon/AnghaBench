
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int dom_mtx; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_1__* ndrvdomain ;
 int socantsendmore (struct socket*) ;

__attribute__((used)) static int
ndrv_shutdown(struct socket *so)
{
 LCK_MTX_ASSERT(ndrvdomain->dom_mtx, LCK_MTX_ASSERT_OWNED);
 socantsendmore(so);
 return 0;
}
