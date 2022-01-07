
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mptcp_mpcapable_opt_common {int mmco_flags; } ;


 int MPCAP_BBIT ;
 int MPCAP_CBIT ;
 int MPCAP_DBIT ;
 int MPCAP_EBIT ;
 int MPCAP_FBIT ;
 int MPCAP_GBIT ;
 int MPCAP_PROPOSAL_SBIT ;

__attribute__((used)) static int
mptcp_valid_mpcapable_common_opt(u_char *cp)
{
 struct mptcp_mpcapable_opt_common *rsp =
     (struct mptcp_mpcapable_opt_common *)cp;



 if (!(rsp->mmco_flags & MPCAP_PROPOSAL_SBIT))
  return (0);

 if (rsp->mmco_flags & (MPCAP_BBIT | MPCAP_CBIT | MPCAP_DBIT |
     MPCAP_EBIT | MPCAP_FBIT | MPCAP_GBIT))
  return (0);

 return (1);
}
