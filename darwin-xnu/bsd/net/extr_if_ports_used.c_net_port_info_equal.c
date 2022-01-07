
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_4_6 {int dummy; } in_addr_4_6 ;
struct net_port_info {scalar_t__ npi_if_index; scalar_t__ npi_local_port; scalar_t__ npi_foreign_port; scalar_t__ npi_owner_pid; scalar_t__ npi_effective_pid; scalar_t__ npi_flags; int npi_foreign_addr_; int npi_local_addr_; } ;


 int ASSERT (int) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static bool
net_port_info_equal(const struct net_port_info *x,
    const struct net_port_info *y)
{
 ASSERT(x != ((void*)0) && y != ((void*)0));

 if (x->npi_if_index == y->npi_if_index &&
     x->npi_local_port == y->npi_local_port &&
     x->npi_foreign_port == y->npi_foreign_port &&
     x->npi_owner_pid == y->npi_owner_pid &&
     x->npi_effective_pid == y->npi_effective_pid &&
     x->npi_flags == y->npi_flags &&
     memcmp(&x->npi_local_addr_, &y->npi_local_addr_,
         sizeof(union in_addr_4_6)) == 0 &&
     memcmp(&x->npi_foreign_addr_, &y->npi_foreign_addr_,
         sizeof(union in_addr_4_6)) == 0) {
  return (1);
 }
 return (0);
}
