
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct socket {scalar_t__ last_pid; int so_flags; scalar_t__ e_upid; int last_uuid; int e_uuid; } ;
struct nstat_tucookie {struct inpcb* inp; } ;
struct inpcb {struct socket* inp_socket; TYPE_3__* inp_Wstat; TYPE_2__* inp_wstat; TYPE_1__* inp_cstat; } ;
struct TYPE_9__ {int npf_flags; scalar_t__ npf_pid; int npf_uuid; } ;
typedef TYPE_4__ nstat_provider_filter ;
typedef scalar_t__ nstat_provider_cookie_t ;
struct TYPE_8__ {scalar_t__ txbytes; scalar_t__ rxbytes; } ;
struct TYPE_7__ {scalar_t__ txbytes; scalar_t__ rxbytes; } ;
struct TYPE_6__ {scalar_t__ txbytes; scalar_t__ rxbytes; } ;


 int NSTAT_FILTER_ACCEPT_CELLULAR ;
 int NSTAT_FILTER_ACCEPT_EXPENSIVE ;
 int NSTAT_FILTER_ACCEPT_WIFI ;
 int NSTAT_FILTER_ACCEPT_WIRED ;
 int NSTAT_FILTER_IFNET_FLAGS ;
 int NSTAT_FILTER_SPECIFIC_USER ;
 int NSTAT_FILTER_SPECIFIC_USER_BY_EPID ;
 int NSTAT_FILTER_SPECIFIC_USER_BY_EUUID ;
 int NSTAT_FILTER_SPECIFIC_USER_BY_PID ;
 int NSTAT_FILTER_SPECIFIC_USER_BY_UUID ;
 int SOF_DELEGATED ;
 scalar_t__ memcmp (int ,int ,int) ;
 int nstat_inpcb_to_flags (struct inpcb*) ;

__attribute__((used)) static bool
nstat_tcpudp_reporting_allowed(nstat_provider_cookie_t cookie, nstat_provider_filter *filter, bool is_UDP)
{
 bool retval = 1;

 if ((filter->npf_flags & (NSTAT_FILTER_IFNET_FLAGS|NSTAT_FILTER_SPECIFIC_USER)) != 0)
 {
  struct nstat_tucookie *tucookie = (struct nstat_tucookie *)cookie;
  struct inpcb *inp = tucookie->inp;


  if ((filter->npf_flags & NSTAT_FILTER_IFNET_FLAGS) != 0)
  {
   uint16_t interface_properties = nstat_inpcb_to_flags(inp);

   if ((filter->npf_flags & interface_properties) == 0)
   {




    if (is_UDP)
    {
     do
     {
      if ((filter->npf_flags & (NSTAT_FILTER_ACCEPT_CELLULAR|NSTAT_FILTER_ACCEPT_EXPENSIVE)) &&
       (inp->inp_cstat->rxbytes || inp->inp_cstat->txbytes))
      {
       break;
      }
      if ((filter->npf_flags & NSTAT_FILTER_ACCEPT_WIFI) &&
       (inp->inp_wstat->rxbytes || inp->inp_wstat->txbytes))
      {
       break;
      }
      if ((filter->npf_flags & NSTAT_FILTER_ACCEPT_WIRED) &&
       (inp->inp_Wstat->rxbytes || inp->inp_Wstat->txbytes))
      {
       break;
      }
      return 0;
     } while (0);
    }
    else
    {
     return 0;
    }
   }
  }

  if (((filter->npf_flags & NSTAT_FILTER_SPECIFIC_USER) != 0) && (retval))
  {
   struct socket *so = inp->inp_socket;
   retval = 0;

   if (so)
   {
    if (((filter->npf_flags & NSTAT_FILTER_SPECIFIC_USER_BY_PID) != 0) &&
     (filter->npf_pid == so->last_pid))
    {
     retval = 1;
    }
    else if (((filter->npf_flags & NSTAT_FILTER_SPECIFIC_USER_BY_EPID) != 0) &&
     (filter->npf_pid == (so->so_flags & SOF_DELEGATED)? so->e_upid : so->last_pid))
    {
     retval = 1;
    }
    else if (((filter->npf_flags & NSTAT_FILTER_SPECIFIC_USER_BY_UUID) != 0) &&
     (memcmp(filter->npf_uuid, so->last_uuid, sizeof(so->last_uuid)) == 0))
    {
     retval = 1;
    }
    else if (((filter->npf_flags & NSTAT_FILTER_SPECIFIC_USER_BY_EUUID) != 0) &&
     (memcmp(filter->npf_uuid, (so->so_flags & SOF_DELEGATED)? so->e_uuid : so->last_uuid,
      sizeof(so->last_uuid)) == 0))
    {
     retval = 1;
    }
   }
  }
 }
 return retval;
}
