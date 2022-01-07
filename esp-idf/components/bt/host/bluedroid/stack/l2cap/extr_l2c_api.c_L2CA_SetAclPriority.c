
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int,int,int,int,int,int ) ;
 int l2cu_set_acl_priority (int*,int ,int ) ;

BOOLEAN L2CA_SetAclPriority (BD_ADDR bd_addr, UINT8 priority)
{
    L2CAP_TRACE_API ("L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%04x, priority:%d",
                     bd_addr[0], bd_addr[1], bd_addr[2],
                     bd_addr[3], (bd_addr[4] << 8) + bd_addr[5], priority);

    return (l2cu_set_acl_priority(bd_addr, priority, FALSE));
}
