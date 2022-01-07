
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int parity; int baudrate; int mode; int port; } ;
typedef TYPE_1__ mb_communication_info_t ;
typedef scalar_t__ esp_err_t ;


 int CONFIG_MB_UART_RTS ;
 int CONFIG_MB_UART_RXD ;
 int CONFIG_MB_UART_TXD ;
 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_BAUDRATE ;
 int MB_MODE_RTU ;
 int MB_PARITY ;
 int MB_PORTNUM ;
 int MB_PORT_SERIAL_MASTER ;
 int SENSE_MB_CHECK (int,int ,char*,...) ;
 int UART_MODE_RS485_HALF_DUPLEX ;
 int UART_PIN_NO_CHANGE ;
 int * device_parameters ;
 scalar_t__ mbc_master_init (int ,void**) ;
 scalar_t__ mbc_master_set_descriptor (int *,int ) ;
 scalar_t__ mbc_master_setup (void*) ;
 scalar_t__ mbc_master_start () ;
 int num_device_parameters ;
 scalar_t__ uart_set_mode (int ,int ) ;
 scalar_t__ uart_set_pin (int ,int ,int ,int ,int ) ;
 int vTaskDelay (int) ;

esp_err_t sense_modbus_init(void)
{
    mb_communication_info_t comm = {
            .port = MB_PORTNUM,
            .mode = MB_MODE_RTU,
            .baudrate = MB_BAUDRATE,
            .parity = MB_PARITY
    };
    void* master_handler = ((void*)0);

    esp_err_t err = mbc_master_init(MB_PORT_SERIAL_MASTER, &master_handler);
    SENSE_MB_CHECK((master_handler != ((void*)0)), ESP_ERR_INVALID_STATE,
                                "mb controller initialization fail.");
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller initialization fail, returns(0x%x).",
                            (uint32_t)err);
    err = mbc_master_setup((void*)&comm);
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller setup fail, returns(0x%x).",
                            (uint32_t)err);
    err = mbc_master_start();
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller start fail, returns(0x%x).",
                            (uint32_t)err);

    err = uart_set_pin(MB_PORTNUM, CONFIG_MB_UART_TXD, CONFIG_MB_UART_RXD,
                                    CONFIG_MB_UART_RTS, UART_PIN_NO_CHANGE);
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
            "mb serial set pin failure, uart_set_pin() returned (0x%x).", (uint32_t)err);

    err = uart_set_mode(MB_PORTNUM, UART_MODE_RS485_HALF_DUPLEX);
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
            "mb serial set mode failure, uart_set_mode() returned (0x%x).", (uint32_t)err);
    vTaskDelay(5);
    err = mbc_master_set_descriptor(&device_parameters[0], num_device_parameters);
    SENSE_MB_CHECK((err == ESP_OK), ESP_ERR_INVALID_STATE,
                                "mb controller set descriptor fail, returns(0x%x).",
                                (uint32_t)err);
    return err;
}
