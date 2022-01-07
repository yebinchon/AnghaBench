
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nd_opts {int nd_opts_done; struct nd_opt_hdr* nd_opts_search; struct nd_opt_hdr* nd_opts_last; } ;
struct nd_opt_hdr {int nd_opt_len; } ;
typedef scalar_t__ caddr_t ;


 int bzero (union nd_opts*,int) ;
 int panic (char*) ;

struct nd_opt_hdr *
nd6_option(union nd_opts *ndopts)
{
 struct nd_opt_hdr *nd_opt;
 int olen;

 if (!ndopts)
  panic("ndopts == NULL in nd6_option\n");
 if (!ndopts->nd_opts_last)
  panic("uninitialized ndopts in nd6_option\n");
 if (!ndopts->nd_opts_search)
  return (((void*)0));
 if (ndopts->nd_opts_done)
  return (((void*)0));

 nd_opt = ndopts->nd_opts_search;


 if ((caddr_t)&nd_opt->nd_opt_len >= (caddr_t)ndopts->nd_opts_last) {
  bzero(ndopts, sizeof (*ndopts));
  return (((void*)0));
 }

 olen = nd_opt->nd_opt_len << 3;
 if (olen == 0) {




  bzero(ndopts, sizeof (*ndopts));
  return (((void*)0));
 }

 ndopts->nd_opts_search = (struct nd_opt_hdr *)((caddr_t)nd_opt + olen);
 if (ndopts->nd_opts_search > ndopts->nd_opts_last) {

  bzero(ndopts, sizeof (*ndopts));
  return (((void*)0));
 } else if (ndopts->nd_opts_search == ndopts->nd_opts_last) {

  ndopts->nd_opts_done = 1;
  ndopts->nd_opts_search = ((void*)0);
 }
 return (nd_opt);
}
