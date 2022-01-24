#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  linenoiseHintsCallback ;
struct TYPE_3__ {int max_cmdline_args; int max_cmdline_length; int /*<<< orphan*/  hint_color; } ;
typedef  TYPE_1__ esp_console_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CR ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CRLF ; 
 int /*<<< orphan*/  LOG_COLOR_CYAN ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esp_console_get_completion ; 
 int /*<<< orphan*/  esp_console_get_hint ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    /* Disable buffering on stdin */
    FUNC10(stdin, NULL, _IONBF, 0);

    /* Minicom, screen, idf_monitor send CR when ENTER key is pressed */
    FUNC3(ESP_LINE_ENDINGS_CR);
    /* Move the caret to the beginning of the next line on '\n' */
    FUNC4(ESP_LINE_ENDINGS_CRLF);

    /* Install UART driver for interrupt-driven reads and writes */
    FUNC0( FUNC11(CONFIG_ESP_CONSOLE_UART_NUM,
                                         256, 0, 0, NULL, 0) );

    /* Tell VFS to use UART driver */
    FUNC5(CONFIG_ESP_CONSOLE_UART_NUM);

    /* Initialize the console */
    esp_console_config_t console_config = {
        .max_cmdline_args = 32,
        .max_cmdline_length = 256,
#if CONFIG_LOG_COLORS
        .hint_color = atoi(LOG_COLOR_CYAN)
#endif
    };
    FUNC0( FUNC2(&console_config) );

    /* Configure linenoise line completion library */
    /* Enable multiline editing. If not set, long commands will scroll within
     * single line.
     */
    FUNC9(1);

    /* Tell linenoise where to get command completions and hints */
    FUNC7(&esp_console_get_completion);
    FUNC8((linenoiseHintsCallback *) &esp_console_get_hint);

    /* Set command history size */
    FUNC6(100);
}