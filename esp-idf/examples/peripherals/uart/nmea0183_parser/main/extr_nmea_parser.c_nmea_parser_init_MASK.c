#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; int /*<<< orphan*/  baud_rate; } ;
typedef  TYPE_2__ uart_config_t ;
typedef  TYPE_3__* nmea_parser_handle_t ;
struct TYPE_13__ {int /*<<< orphan*/  event_queue_size; int /*<<< orphan*/  rx_pin; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  uart_port; } ;
struct TYPE_16__ {TYPE_1__ uart; } ;
typedef  TYPE_4__ nmea_parser_config_t ;
struct TYPE_15__ {int all_statements; struct TYPE_15__* buffer; int /*<<< orphan*/  uart_port; int /*<<< orphan*/  event_loop_hdl; int /*<<< orphan*/  tsk_hdl; int /*<<< orphan*/  event_queue; } ;
typedef  TYPE_3__ esp_gps_t ;
struct TYPE_17__ {int /*<<< orphan*/ * task_name; int /*<<< orphan*/  queue_size; } ;
typedef  TYPE_6__ esp_event_loop_args_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NMEA_PARSER_RING_BUFFER_SIZE ; 
 int /*<<< orphan*/  CONFIG_NMEA_PARSER_TASK_PRIORITY ; 
 int /*<<< orphan*/  CONFIG_NMEA_PARSER_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  GPS_TAG ; 
 int /*<<< orphan*/  NMEA_EVENT_LOOP_QUEUE_SIZE ; 
 int NMEA_PARSER_RUNTIME_BUFFER_SIZE ; 
 int STATEMENT_GGA ; 
 int STATEMENT_GLL ; 
 int STATEMENT_GSA ; 
 int STATEMENT_GSV ; 
 int STATEMENT_RMC ; 
 int STATEMENT_VTG ; 
 int /*<<< orphan*/  UART_HW_FLOWCTRL_DISABLE ; 
 int /*<<< orphan*/  UART_PIN_NO_CHANGE ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  nmea_parser_task_entry ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

nmea_parser_handle_t FUNC14(const nmea_parser_config_t *config)
{
    esp_gps_t *esp_gps = FUNC2(1, sizeof(esp_gps_t));
    if (!esp_gps) {
        FUNC0(GPS_TAG, "calloc memory for esp_fps failed");
        goto err_gps;
    }
    esp_gps->buffer = FUNC2(1, NMEA_PARSER_RUNTIME_BUFFER_SIZE);
    if (!esp_gps->buffer) {
        FUNC0(GPS_TAG, "calloc memory for runtime buffer failed");
        goto err_buffer;
    }
#if CONFIG_NMEA_STATEMENT_GSA
    esp_gps->all_statements |= (1 << STATEMENT_GSA);
#endif
#if CONFIG_NMEA_STATEMENT_GSV
    esp_gps->all_statements |= (1 << STATEMENT_GSV);
#endif
#if CONFIG_NMEA_STATEMENT_GGA
    esp_gps->all_statements |= (1 << STATEMENT_GGA);
#endif
#if CONFIG_NMEA_STATEMENT_RMC
    esp_gps->all_statements |= (1 << STATEMENT_RMC);
#endif
#if CONFIG_NMEA_STATEMENT_GLL
    esp_gps->all_statements |= (1 << STATEMENT_GLL);
#endif
#if CONFIG_NMEA_STATEMENT_VTG
    esp_gps->all_statements |= (1 << STATEMENT_VTG);
#endif
    /* Set attributes */
    esp_gps->uart_port = config->uart.uart_port;
    esp_gps->all_statements &= 0xFE;
    /* Install UART friver */
    uart_config_t uart_config = {
        .baud_rate = config->uart.baud_rate,
        .data_bits = config->uart.data_bits,
        .parity = config->uart.parity,
        .stop_bits = config->uart.stop_bits,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    if (FUNC10(esp_gps->uart_port, &uart_config) != ESP_OK) {
        FUNC0(GPS_TAG, "config uart parameter failed");
        goto err_uart_config;
    }
    if (FUNC12(esp_gps->uart_port, UART_PIN_NO_CHANGE, config->uart.rx_pin,
                     UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        FUNC0(GPS_TAG, "config uart gpio failed");
        goto err_uart_config;
    }
    if (FUNC7(esp_gps->uart_port, CONFIG_NMEA_PARSER_RING_BUFFER_SIZE, 0,
                            config->uart.event_queue_size, &esp_gps->event_queue, 0) != ESP_OK) {
        FUNC0(GPS_TAG, "install uart driver failed");
        goto err_uart_install;
    }
    /* Set pattern interrupt, used to detect the end of a line */
    FUNC8(esp_gps->uart_port, '\n', 1, 9, 0, 0);
    /* Set pattern queue size */
    FUNC11(esp_gps->uart_port, config->uart.event_queue_size);
    FUNC9(esp_gps->uart_port);
    /* Create Event loop */
    esp_event_loop_args_t loop_args = {
        .queue_size = NMEA_EVENT_LOOP_QUEUE_SIZE,
        .task_name = NULL
    };
    if (FUNC3(&loop_args, &esp_gps->event_loop_hdl) != ESP_OK) {
        FUNC0(GPS_TAG, "create event loop faild");
        goto err_eloop;
    }
    /* Create NMEA Parser task */
    BaseType_t err = FUNC13(
                         nmea_parser_task_entry,
                         "nmea_parser",
                         CONFIG_NMEA_PARSER_TASK_STACK_SIZE,
                         esp_gps,
                         CONFIG_NMEA_PARSER_TASK_PRIORITY,
                         &esp_gps->tsk_hdl);
    if (err != pdTRUE) {
        FUNC0(GPS_TAG, "create NMEA Parser task failed");
        goto err_task_create;
    }
    FUNC1(GPS_TAG, "NMEA Parser init OK");
    return esp_gps;
    /*Error Handling*/
err_task_create:
    FUNC4(esp_gps->event_loop_hdl);
err_eloop:
err_uart_install:
    FUNC6(esp_gps->uart_port);
err_uart_config:
err_buffer:
    FUNC5(esp_gps->buffer);
err_gps:
    FUNC5(esp_gps);
    return NULL;
}