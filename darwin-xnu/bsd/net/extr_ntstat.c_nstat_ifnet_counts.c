
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_ifnet_cookie {struct ifnet* ifp; } ;
struct nstat_counts {scalar_t__ nstat_cell_txbytes; scalar_t__ nstat_cell_rxbytes; int nstat_txbytes; int nstat_txpackets; int nstat_rxbytes; int nstat_rxpackets; } ;
struct ifnet {int if_obytes; int if_opackets; int if_ibytes; int if_ipackets; } ;
typedef scalar_t__ nstat_provider_cookie_t ;
typedef int errno_t ;


 int EINVAL ;
 int bzero (struct nstat_counts*,int) ;
 scalar_t__ nstat_ifnet_gone (scalar_t__) ;

__attribute__((used)) static errno_t
nstat_ifnet_counts(
 nstat_provider_cookie_t cookie,
 struct nstat_counts *out_counts,
 int *out_gone)
{
 struct nstat_ifnet_cookie *ifcookie =
     (struct nstat_ifnet_cookie *)cookie;
 struct ifnet *ifp = ifcookie->ifp;

 if (out_gone) *out_gone = 0;


 if (nstat_ifnet_gone(cookie))
 {
  if (out_gone) *out_gone = 1;
  return EINVAL;
 }

 bzero(out_counts, sizeof(*out_counts));
 out_counts->nstat_rxpackets = ifp->if_ipackets;
 out_counts->nstat_rxbytes = ifp->if_ibytes;
 out_counts->nstat_txpackets = ifp->if_opackets;
 out_counts->nstat_txbytes = ifp->if_obytes;
 out_counts->nstat_cell_rxbytes = out_counts->nstat_cell_txbytes = 0;
 return 0;
}
