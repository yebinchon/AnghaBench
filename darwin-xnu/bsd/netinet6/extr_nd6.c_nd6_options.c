
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nd_opts {scalar_t__ nd_opts_done; struct nd_opt_prefix_info* nd_opts_pi_end; struct nd_opt_hdr** nd_opt_array; int * nd_opts_last; int * nd_opts_search; } ;
struct nd_opt_prefix_info {int dummy; } ;
struct nd_opt_hdr {int nd_opt_type; } ;
struct TYPE_2__ {int icp6s_nd_toomanyopt; int icp6s_nd_badopt; } ;


 int LOG_DEBUG ;
 int LOG_INFO ;
 int bzero (union nd_opts*,int) ;
 TYPE_1__ icmp6stat ;
 int nd6_maxndopt ;
 struct nd_opt_hdr* nd6_option (union nd_opts*) ;
 int nd6log (int ) ;
 int panic (char*) ;

int
nd6_options(union nd_opts *ndopts)
{
 struct nd_opt_hdr *nd_opt;
 int i = 0;

 if (ndopts == ((void*)0))
  panic("ndopts == NULL in nd6_options");
 if (ndopts->nd_opts_last == ((void*)0))
  panic("uninitialized ndopts in nd6_options");
 if (ndopts->nd_opts_search == ((void*)0))
  return (0);

 while (1) {
  nd_opt = nd6_option(ndopts);
  if (nd_opt == ((void*)0) && ndopts->nd_opts_last == ((void*)0)) {




   icmp6stat.icp6s_nd_badopt++;
   bzero(ndopts, sizeof (*ndopts));
   return (-1);
  }

  if (nd_opt == ((void*)0))
   goto skip1;

  switch (nd_opt->nd_opt_type) {
  case 129:
  case 128:
  case 134:
  case 130:
  case 133:
   if (ndopts->nd_opt_array[nd_opt->nd_opt_type]) {
    nd6log((LOG_INFO,
        "duplicated ND6 option found (type=%d)\n",
        nd_opt->nd_opt_type));

   } else {
    ndopts->nd_opt_array[nd_opt->nd_opt_type] =
        nd_opt;
   }
   break;
  case 132:
   if (ndopts->nd_opt_array[nd_opt->nd_opt_type] == 0) {
    ndopts->nd_opt_array[nd_opt->nd_opt_type] =
        nd_opt;
   }
   ndopts->nd_opts_pi_end =
       (struct nd_opt_prefix_info *)nd_opt;
   break;
  case 131:
  case 135:

   break;
  default:




   nd6log((LOG_DEBUG,
       "nd6_options: unsupported option %d - "
       "option ignored\n", nd_opt->nd_opt_type));
  }

skip1:
  i++;
  if (i > nd6_maxndopt) {
   icmp6stat.icp6s_nd_toomanyopt++;
   nd6log((LOG_INFO, "too many loop in nd opt\n"));
   break;
  }

  if (ndopts->nd_opts_done)
   break;
 }

 return (0);
}
