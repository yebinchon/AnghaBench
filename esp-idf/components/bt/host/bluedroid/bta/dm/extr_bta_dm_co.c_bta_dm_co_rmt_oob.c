
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_OCTET16 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTIF_TRACE_DEBUG (char*,...) ;
 int FALSE ;
 int bta_dm_ci_rmt_oob (int ,int ,int ,int ) ;
 int btif_dm_proc_rmt_oob (int ,int ,int ) ;

void bta_dm_co_rmt_oob(BD_ADDR bd_addr)
{
    BT_OCTET16 p_c;
    BT_OCTET16 p_r;
    BOOLEAN result = FALSE;
    BTIF_TRACE_DEBUG("bta_dm_co_rmt_oob: result=%d", result);
    bta_dm_ci_rmt_oob(result, bd_addr, p_c, p_r);
}
