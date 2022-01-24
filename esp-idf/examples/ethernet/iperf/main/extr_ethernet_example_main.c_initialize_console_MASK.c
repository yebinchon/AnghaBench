#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int use_ref_tick; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; int /*<<< orphan*/  baud_rate; } ;
typedef  TYPE_1__ uart_config_t ;
typedef  int /*<<< orphan*/  linenoiseHintsCallback ;
struct TYPE_6__ {int max_cmdline_args; int max_cmdline_length; int /*<<< orphan*/  hint_color; } ;
typedef  TYPE_2__ esp_console_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_BAUDRATE ; 
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CR ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CRLF ; 
 int /*<<< orphan*/  HISTORY_PATH ; 
 int /*<<< orphan*/  LOG_COLOR_CYAN ; 
 int /*<<< orphan*/  UART_DATA_8_BITS ; 
 int /*<<< orphan*/  UART_PARITY_DISABLE ; 
 int /*<<< orphan*/  UART_STOP_BITS_1 ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esp_console_get_completion ; 
 int /*<<< orphan*/  esp_console_get_hint ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC14(void)
{
    /* Disable buffering on stdin */
    FUNC11(stdin, NULL, _IONBF, 0);

    /* Minicom, screen, idf_monitor send CR when ENTER key is pressed */
    FUNC3(ESP_LINE_ENDINGS_CR);
    /* Move the caret to the beginning of the next line on '\n' */
    FUNC4(ESP_LINE_ENDINGS_CRLF);

    /* Configure UART. Note that REF_TICK is used so that the baud rate remains
     * correct while APB frequency is changing in light sleep mode.
     */
    const uart_config_t uart_config = {
        .baud_rate = CONFIG_ESP_CONSOLE_UART_BAUDRATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .use_ref_tick = true
    };
    FUNC0(FUNC13(CONFIG_ESP_CONSOLE_UART_NUM, &uart_config));

    /* Install UART driver for interrupt-driven reads and writes */
    FUNC0(FUNC12(CONFIG_ESP_CONSOLE_UART_NUM,
                                        256, 0, 0, NULL, 0));

    /* Tell VFS to use UART driver */
    FUNC5(CONFIG_ESP_CONSOLE_UART_NUM);

    /* Initialize the console */
    esp_console_config_t console_config = {
        .max_cmdline_args = 16,
        .max_cmdline_length = 256,
#if CONFIG_LOG_COLORS
        .hint_color = atoi(LOG_COLOR_CYAN)
#endif
    };
    FUNC0(FUNC2(&console_config));

    /* Configure linenoise line completion library */
    FUNC10(1);

    /* Tell linenoise where to get command completions and hints */
    FUNC8(&esp_console_get_completion);
    FUNC9((linenoiseHintsCallback *)&esp_console_get_hint);

    /* Set command history size */
    FUNC7(100);

#if CONFIG_EXAMPLE_STORE_HISTORY
    /* Load command history from filesystem */
    linenoiseHistoryLoad(HISTORY_PATH);
#endif
}