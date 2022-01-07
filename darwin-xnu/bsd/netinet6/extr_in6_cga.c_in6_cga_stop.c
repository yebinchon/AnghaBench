
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iov_len; int * iov_base; } ;
struct TYPE_4__ {scalar_t__ iov_len; int * iov_base; } ;
struct TYPE_6__ {TYPE_2__ cga_pubkey; TYPE_1__ cga_privkey; } ;


 int FREE (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int M_IP6CGA ;
 TYPE_3__ in6_cga ;
 int in6_cga_node_lock_assert (int ) ;

int
in6_cga_stop(void)
{
 in6_cga_node_lock_assert(LCK_MTX_ASSERT_OWNED);

 if (in6_cga.cga_privkey.iov_base != ((void*)0)) {
  FREE(in6_cga.cga_privkey.iov_base, M_IP6CGA);
  in6_cga.cga_privkey.iov_base = ((void*)0);
  in6_cga.cga_privkey.iov_len = 0;
 }

 if (in6_cga.cga_pubkey.iov_base != ((void*)0)) {
  FREE(in6_cga.cga_pubkey.iov_base, M_IP6CGA);
  in6_cga.cga_pubkey.iov_base = ((void*)0);
  in6_cga.cga_pubkey.iov_len = 0;
 }

 return (0);
}
