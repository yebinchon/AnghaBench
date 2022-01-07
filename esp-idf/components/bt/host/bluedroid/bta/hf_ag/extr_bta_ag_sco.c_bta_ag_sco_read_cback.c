
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBTM_SCO_DATA_FLAG ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int APPL_TRACE_DEBUG (char*,scalar_t__) ;
 scalar_t__ BTM_SCO_DATA_CORRECT ;
 int bta_ag_sco_co_in_data (int *,scalar_t__) ;

__attribute__((used)) static void bta_ag_sco_read_cback(UINT16 sco_inx, BT_HDR *p_data, tBTM_SCO_DATA_FLAG status)
{
    if (status != BTM_SCO_DATA_CORRECT)
    {
        APPL_TRACE_DEBUG("bta_ag_sco_read_cback: status(%d)", status);
    }


    bta_ag_sco_co_in_data(p_data, status);
}
