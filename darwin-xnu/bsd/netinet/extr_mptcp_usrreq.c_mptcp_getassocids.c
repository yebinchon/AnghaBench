
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
struct mptses {scalar_t__ mpte_associd; } ;


 scalar_t__ SAE_ASSOCID_ANY ;
 int USER_ADDR_NULL ;
 int copyout (scalar_t__*,int ,int) ;
 int mpte_lock_assert_held (struct mptses*) ;

__attribute__((used)) static int
mptcp_getassocids(struct mptses *mpte, uint32_t *cnt, user_addr_t aidp)
{
 mpte_lock_assert_held(mpte);


 *cnt = (mpte->mpte_associd != SAE_ASSOCID_ANY) ? 1 : 0;


 if (aidp == USER_ADDR_NULL)
  return (0);

 return (copyout(&mpte->mpte_associd, aidp,
     sizeof (mpte->mpte_associd)));
}
