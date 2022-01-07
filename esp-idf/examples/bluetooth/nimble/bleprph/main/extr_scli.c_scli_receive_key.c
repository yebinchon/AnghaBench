
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLE_RX_TIMEOUT ;
 int cli_handle ;
 int xQueueReceive (int ,int*,int ) ;

int scli_receive_key(int *console_key)
{
    return xQueueReceive(cli_handle, console_key, BLE_RX_TIMEOUT);
}
