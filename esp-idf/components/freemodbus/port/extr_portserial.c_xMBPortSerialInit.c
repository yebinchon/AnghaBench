
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int data_bits; int parity; int rx_flow_ctrl_thresh; int flow_ctrl; int stop_bits; int baud_rate; } ;
typedef TYPE_1__ uart_config_t ;
typedef scalar_t__ esp_err_t ;
typedef int eMBParity ;
typedef int ULONG ;
typedef int UCHAR ;
typedef scalar_t__ BaseType_t ;
typedef int BOOL ;


 scalar_t__ ESP_OK ;
 int FALSE ;



 int MB_PORT_CHECK (int,int,char*,...) ;
 int MB_PORT_SERIAL_ISR_FLAG ;
 int MB_QUEUE_LENGTH ;
 int MB_SERIAL_BUF_SIZE ;
 int MB_SERIAL_TASK_PRIO ;
 int MB_SERIAL_TASK_STACK_SIZE ;
 int MB_SERIAL_TOUT ;
 int TRUE ;
 int UART_DATA_5_BITS ;
 int UART_DATA_6_BITS ;
 int UART_DATA_7_BITS ;
 int UART_DATA_8_BITS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_PARITY_DISABLE ;
 int UART_PARITY_EVEN ;
 int UART_PARITY_ODD ;
 int UART_STOP_BITS_1 ;
 scalar_t__ pdPASS ;
 scalar_t__ uart_driver_install (int,int ,int ,int ,int *,int ) ;
 scalar_t__ uart_param_config (int,TYPE_1__*) ;
 scalar_t__ uart_set_rx_timeout (int,int ) ;
 int ucUartNumber ;
 scalar_t__ uiRxBufferPos ;
 int vTaskDelete (int ) ;
 int vTaskSuspend (int ) ;
 int vUartTask ;
 int xMbTaskHandle ;
 int xMbUartQueue ;
 scalar_t__ xTaskCreate (int ,char*,int ,int *,int ,int *) ;

BOOL xMBPortSerialInit(UCHAR ucPORT, ULONG ulBaudRate,
                        UCHAR ucDataBits, eMBParity eParity)
{
    esp_err_t xErr = ESP_OK;
    MB_PORT_CHECK((eParity <= 130), FALSE, "mb serial set parity failure.");

    ucUartNumber = ucPORT;

    UCHAR ucParity = UART_PARITY_DISABLE;
    UCHAR ucData = UART_DATA_8_BITS;
    switch(eParity){
        case 129:
            ucParity = UART_PARITY_DISABLE;
            break;
        case 128:
            ucParity = UART_PARITY_ODD;
            break;
        case 130:
            ucParity = UART_PARITY_EVEN;
            break;
    }
    switch(ucDataBits){
        case 5:
            ucData = UART_DATA_5_BITS;
            break;
        case 6:
            ucData = UART_DATA_6_BITS;
            break;
        case 7:
            ucData = UART_DATA_7_BITS;
            break;
        case 8:
            ucData = UART_DATA_8_BITS;
            break;
        default:
            ucData = UART_DATA_8_BITS;
            break;
    }
    uart_config_t xUartConfig = {
        .baud_rate = ulBaudRate,
        .data_bits = ucData,
        .parity = ucParity,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .rx_flow_ctrl_thresh = 2,
    };

    xErr = uart_param_config(ucUartNumber, &xUartConfig);
    MB_PORT_CHECK((xErr == ESP_OK),
            FALSE, "mb config failure, uart_param_config() returned (0x%x).", (uint32_t)xErr);

    xErr = uart_driver_install(ucUartNumber, MB_SERIAL_BUF_SIZE, MB_SERIAL_BUF_SIZE,
                                    MB_QUEUE_LENGTH, &xMbUartQueue, MB_PORT_SERIAL_ISR_FLAG);
    MB_PORT_CHECK((xErr == ESP_OK), FALSE,
            "mb serial driver failure, uart_driver_install() returned (0x%x).", (uint32_t)xErr);


    xErr = uart_set_rx_timeout(ucUartNumber, MB_SERIAL_TOUT);
    MB_PORT_CHECK((xErr == ESP_OK), FALSE,
            "mb serial set rx timeout failure, uart_set_rx_timeout() returned (0x%x).", (uint32_t)xErr);


    BaseType_t xStatus = xTaskCreate(vUartTask, "uart_queue_task", MB_SERIAL_TASK_STACK_SIZE,
                                        ((void*)0), MB_SERIAL_TASK_PRIO, &xMbTaskHandle);
    if (xStatus != pdPASS) {
        vTaskDelete(xMbTaskHandle);

        MB_PORT_CHECK(FALSE, FALSE,
                "mb stack serial task creation error. xTaskCreate() returned (0x%x).",
                (uint32_t)xStatus);
    } else {
        vTaskSuspend(xMbTaskHandle);
    }
    uiRxBufferPos = 0;
    return TRUE;
}
