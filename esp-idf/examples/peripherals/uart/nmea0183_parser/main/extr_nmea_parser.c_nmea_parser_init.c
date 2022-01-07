
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int flow_ctrl; int stop_bits; int parity; int data_bits; int baud_rate; } ;
typedef TYPE_2__ uart_config_t ;
typedef TYPE_3__* nmea_parser_handle_t ;
struct TYPE_13__ {int event_queue_size; int rx_pin; int stop_bits; int parity; int data_bits; int baud_rate; int uart_port; } ;
struct TYPE_16__ {TYPE_1__ uart; } ;
typedef TYPE_4__ nmea_parser_config_t ;
struct TYPE_15__ {int all_statements; struct TYPE_15__* buffer; int uart_port; int event_loop_hdl; int tsk_hdl; int event_queue; } ;
typedef TYPE_3__ esp_gps_t ;
struct TYPE_17__ {int * task_name; int queue_size; } ;
typedef TYPE_6__ esp_event_loop_args_t ;
typedef scalar_t__ BaseType_t ;


 int CONFIG_NMEA_PARSER_RING_BUFFER_SIZE ;
 int CONFIG_NMEA_PARSER_TASK_PRIORITY ;
 int CONFIG_NMEA_PARSER_TASK_STACK_SIZE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int GPS_TAG ;
 int NMEA_EVENT_LOOP_QUEUE_SIZE ;
 int NMEA_PARSER_RUNTIME_BUFFER_SIZE ;
 int STATEMENT_GGA ;
 int STATEMENT_GLL ;
 int STATEMENT_GSA ;
 int STATEMENT_GSV ;
 int STATEMENT_RMC ;
 int STATEMENT_VTG ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_PIN_NO_CHANGE ;
 void* calloc (int,int) ;
 scalar_t__ esp_event_loop_create (TYPE_6__*,int *) ;
 int esp_event_loop_delete (int ) ;
 int free (TYPE_3__*) ;
 int nmea_parser_task_entry ;
 scalar_t__ pdTRUE ;
 int uart_driver_delete (int ) ;
 scalar_t__ uart_driver_install (int ,int ,int ,int ,int *,int ) ;
 int uart_enable_pattern_det_baud_intr (int ,char,int,int,int ,int ) ;
 int uart_flush (int ) ;
 scalar_t__ uart_param_config (int ,TYPE_2__*) ;
 int uart_pattern_queue_reset (int ,int ) ;
 scalar_t__ uart_set_pin (int ,int ,int ,int ,int ) ;
 scalar_t__ xTaskCreate (int ,char*,int ,TYPE_3__*,int ,int *) ;

nmea_parser_handle_t nmea_parser_init(const nmea_parser_config_t *config)
{
    esp_gps_t *esp_gps = calloc(1, sizeof(esp_gps_t));
    if (!esp_gps) {
        ESP_LOGE(GPS_TAG, "calloc memory for esp_fps failed");
        goto err_gps;
    }
    esp_gps->buffer = calloc(1, NMEA_PARSER_RUNTIME_BUFFER_SIZE);
    if (!esp_gps->buffer) {
        ESP_LOGE(GPS_TAG, "calloc memory for runtime buffer failed");
        goto err_buffer;
    }
    esp_gps->uart_port = config->uart.uart_port;
    esp_gps->all_statements &= 0xFE;

    uart_config_t uart_config = {
        .baud_rate = config->uart.baud_rate,
        .data_bits = config->uart.data_bits,
        .parity = config->uart.parity,
        .stop_bits = config->uart.stop_bits,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    if (uart_param_config(esp_gps->uart_port, &uart_config) != ESP_OK) {
        ESP_LOGE(GPS_TAG, "config uart parameter failed");
        goto err_uart_config;
    }
    if (uart_set_pin(esp_gps->uart_port, UART_PIN_NO_CHANGE, config->uart.rx_pin,
                     UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        ESP_LOGE(GPS_TAG, "config uart gpio failed");
        goto err_uart_config;
    }
    if (uart_driver_install(esp_gps->uart_port, CONFIG_NMEA_PARSER_RING_BUFFER_SIZE, 0,
                            config->uart.event_queue_size, &esp_gps->event_queue, 0) != ESP_OK) {
        ESP_LOGE(GPS_TAG, "install uart driver failed");
        goto err_uart_install;
    }

    uart_enable_pattern_det_baud_intr(esp_gps->uart_port, '\n', 1, 9, 0, 0);

    uart_pattern_queue_reset(esp_gps->uart_port, config->uart.event_queue_size);
    uart_flush(esp_gps->uart_port);

    esp_event_loop_args_t loop_args = {
        .queue_size = NMEA_EVENT_LOOP_QUEUE_SIZE,
        .task_name = ((void*)0)
    };
    if (esp_event_loop_create(&loop_args, &esp_gps->event_loop_hdl) != ESP_OK) {
        ESP_LOGE(GPS_TAG, "create event loop faild");
        goto err_eloop;
    }

    BaseType_t err = xTaskCreate(
                         nmea_parser_task_entry,
                         "nmea_parser",
                         CONFIG_NMEA_PARSER_TASK_STACK_SIZE,
                         esp_gps,
                         CONFIG_NMEA_PARSER_TASK_PRIORITY,
                         &esp_gps->tsk_hdl);
    if (err != pdTRUE) {
        ESP_LOGE(GPS_TAG, "create NMEA Parser task failed");
        goto err_task_create;
    }
    ESP_LOGI(GPS_TAG, "NMEA Parser init OK");
    return esp_gps;

err_task_create:
    esp_event_loop_delete(esp_gps->event_loop_hdl);
err_eloop:
err_uart_install:
    uart_driver_delete(esp_gps->uart_port);
err_uart_config:
err_buffer:
    free(esp_gps->buffer);
err_gps:
    free(esp_gps);
    return ((void*)0);
}
