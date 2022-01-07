
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct iovec {int * iov_base; } ;
struct in6_cga_prepare {int cga_security_level; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct iovec cga_pubkey; struct in6_cga_prepare cga_prepare; } ;


 int EADDRNOTAVAIL ;
 int LCK_MTX_ASSERT_OWNED ;
 int VERIFY (int ) ;
 TYPE_1__ in6_cga ;
 int in6_cga_generate_iid (struct in6_cga_prepare*,struct iovec const*,int ,struct in6_addr*) ;
 int in6_cga_node_lock_assert (int ) ;

int
in6_cga_generate(struct in6_cga_prepare *prepare, u_int8_t collisions,
    struct in6_addr *in6)
{
 int error;
 const struct iovec *pubkey;

 in6_cga_node_lock_assert(LCK_MTX_ASSERT_OWNED);
 VERIFY(in6 != ((void*)0));

 if (prepare == ((void*)0))
  prepare = &in6_cga.cga_prepare;
 else
  prepare->cga_security_level =
      in6_cga.cga_prepare.cga_security_level;

 pubkey = &in6_cga.cga_pubkey;

 if (pubkey->iov_base != ((void*)0)) {
  in6_cga_generate_iid(prepare, pubkey, collisions, in6);
  error = 0;
 }
 else
  error = EADDRNOTAVAIL;

 return (error);
}
