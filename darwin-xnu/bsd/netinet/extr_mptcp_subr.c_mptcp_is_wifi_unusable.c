
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mptses {int mpte_flags; } ;
struct TYPE_2__ {int sa_wifi_status; } ;


 int MPTE_FIRSTPARTY ;
 int SYMPTOMS_ADVISORY_WIFI_BAD ;
 TYPE_1__ mptcp_advisory ;

int
mptcp_is_wifi_unusable(struct mptses *mpte)
{
 if (mpte->mpte_flags & MPTE_FIRSTPARTY) {
  if (mptcp_advisory.sa_wifi_status)
   return ((mptcp_advisory.sa_wifi_status & SYMPTOMS_ADVISORY_WIFI_BAD) ? 1 : 0);





  return (-1);
 }

 return ((mptcp_advisory.sa_wifi_status & SYMPTOMS_ADVISORY_WIFI_BAD) ? 1 : 0);
}
