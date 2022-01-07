
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSMP_STATUS ;
typedef scalar_t__ UINT8 ;
typedef int BD_ADDR ;


 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int SMP_REPEATED_ATTEMPTS ;
 int SMP_SUCCESS ;
 int SMP_SecurityGrant (int ,int ) ;

void BTM_SecurityGrant(BD_ADDR bd_addr, UINT8 res)
{

    tSMP_STATUS res_smp = (res == BTM_SUCCESS) ? SMP_SUCCESS : SMP_REPEATED_ATTEMPTS;
    BTM_TRACE_DEBUG ("BTM_SecurityGrant");
    SMP_SecurityGrant(bd_addr, res_smp);

}
