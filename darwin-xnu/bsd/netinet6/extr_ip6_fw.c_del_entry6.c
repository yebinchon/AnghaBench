
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct ip6_fw_head {struct ip6_fw_chain* lh_first; } ;
struct TYPE_2__ {struct ip6_fw_chain* le_next; } ;
struct ip6_fw_chain {scalar_t__ fw_number; struct ip6_fw_chain* rule; TYPE_1__ chain; } ;


 int EINVAL ;
 int FREE (struct ip6_fw_chain*,int ) ;
 int LIST_REMOVE (struct ip6_fw_chain*,int ) ;
 int M_IP6FW ;
 int chain ;

__attribute__((used)) static int
del_entry6(struct ip6_fw_head *chainptr, u_short number)
{
 struct ip6_fw_chain *fcp;

 fcp = chainptr->lh_first;
 if (number != (u_short)-1) {
  for (; fcp; fcp = fcp->chain.le_next) {
   if (fcp->rule->fw_number == number) {
    LIST_REMOVE(fcp, chain);
    FREE(fcp->rule, M_IP6FW);
    FREE(fcp, M_IP6FW);
    return 0;
   }
  }
 }

 return (EINVAL);
}
