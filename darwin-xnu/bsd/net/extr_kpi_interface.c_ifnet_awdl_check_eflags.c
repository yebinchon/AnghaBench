
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {int if_eflags; } ;


 int EINVAL ;
 int IFEF_AWDL ;
 int IFEF_AWDL_MASK ;
 int IFEF_AWDL_RESTRICTED ;
 int IFNET_LCK_ASSERT_EXCLUSIVE ;
 int ifnet_lock_assert (TYPE_1__*,int ) ;

__attribute__((used)) static errno_t
ifnet_awdl_check_eflags(ifnet_t ifp, u_int32_t *new_eflags, u_int32_t *mask)
{
 u_int32_t eflags;

 ifnet_lock_assert(ifp, IFNET_LCK_ASSERT_EXCLUSIVE);

 eflags = (*new_eflags & *mask) | (ifp->if_eflags & ~(*mask));

 if (ifp->if_eflags & IFEF_AWDL) {
  if (eflags & IFEF_AWDL) {
   if ((eflags & IFEF_AWDL_MASK) != IFEF_AWDL_MASK)
    return (EINVAL);
  } else {
   *new_eflags &= ~IFEF_AWDL_MASK;
   *mask |= IFEF_AWDL_MASK;
  }
 } else if (eflags & IFEF_AWDL) {
  *new_eflags |= IFEF_AWDL_MASK;
  *mask |= IFEF_AWDL_MASK;
 } else if (eflags & IFEF_AWDL_RESTRICTED &&
     !(ifp->if_eflags & IFEF_AWDL))
  return (EINVAL);

 return (0);
}
