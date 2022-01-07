
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int mb_slave_interface_t ;
typedef scalar_t__ mb_port_type_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NOT_SUPPORTED ;
 scalar_t__ ESP_OK ;


 int MB_SLAVE_CHECK (int ,int ,char*,scalar_t__,int ) ;
 scalar_t__ mbc_serial_slave_create (scalar_t__,void**) ;
 int * slave_interface_ptr ;

esp_err_t mbc_slave_init(mb_port_type_t port_type, void** handler)
{
    void* port_handler = ((void*)0);
    esp_err_t error = ESP_ERR_NOT_SUPPORTED;
    switch(port_type)
    {
        case 129:

            error = mbc_serial_slave_create(port_type, &port_handler);
            break;
        case 128:


            return ESP_ERR_NOT_SUPPORTED;
        default:
            return ESP_ERR_NOT_SUPPORTED;
    }
    MB_SLAVE_CHECK((port_handler != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface initialization failure, error=(0x%x), port type=(0x%x).",
                    error, (uint16_t)port_type);

    if ((port_handler != ((void*)0)) && (error == ESP_OK)) {
        slave_interface_ptr = (mb_slave_interface_t*) port_handler;
        *handler = port_handler;
    }

    return error;
}
