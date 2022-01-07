
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;


 int PORT_EV_RXCHAR ;
 int PORT_SetEventCallback (int ,int ) ;
 int PORT_SetEventMask (int ,int ) ;
 int bta_hf_client_port_cback ;

void bta_hf_client_setup_port(UINT16 handle)
{
    PORT_SetEventMask(handle, PORT_EV_RXCHAR);
    PORT_SetEventCallback(handle, bta_hf_client_port_cback);
}
