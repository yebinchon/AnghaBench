
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int UNUSED (int ) ;
 int bta_ag_co_tx_write (int ,int *,int ) ;

__attribute__((used)) static int bta_ag_data_cback(UINT16 port_handle, void *p_data, UINT16 len, UINT16 handle)
{
    UNUSED(port_handle);


    bta_ag_co_tx_write(handle, (UINT8 *) p_data, len);
    return 0;
}
