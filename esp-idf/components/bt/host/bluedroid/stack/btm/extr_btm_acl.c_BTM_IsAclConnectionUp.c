
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBT_TRANSPORT ;
typedef int tACL_CONN ;
typedef int BOOLEAN ;
typedef int * BD_ADDR ;


 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int FALSE ;
 int TRUE ;
 int * btm_bda_to_acl (int *,int ) ;

BOOLEAN BTM_IsAclConnectionUp (BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tACL_CONN *p;

    BTM_TRACE_API ("BTM_IsAclConnectionUp: RemBdAddr: %02x%02x%02x%02x%02x%02x\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);

    p = btm_bda_to_acl(remote_bda, transport);
    if (p != (tACL_CONN *)((void*)0)) {
        return (TRUE);
    }


    return (FALSE);
}
