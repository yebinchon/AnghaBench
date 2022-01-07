
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int KEV_DL_MASTER_ELECTED ;
 int KEV_DL_SUBCLASS ;
 int dlil_post_msg (int *,int ,int ,int *,int ) ;

errno_t
ifnet_notice_master_elected(ifnet_t ifp)
{
 if (ifp == ((void*)0))
  return (EINVAL);

 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_MASTER_ELECTED, ((void*)0), 0);
 return (0);
}
