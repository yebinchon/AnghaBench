
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;


 int bta_ag_data_cback (int ,void*,int ,int) ;

int bta_ag_data_cback_3(UINT16 port_handle, void *p_data, UINT16 len)
{
    return bta_ag_data_cback(port_handle, p_data, len, 3);
}
