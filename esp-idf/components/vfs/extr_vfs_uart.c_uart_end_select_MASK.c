#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uart_select_args_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC6(void *end_select_args)
{
    uart_select_args_t *args = end_select_args;

    FUNC1(FUNC3());
    esp_err_t ret = FUNC5(args);
    for (int i = 0; i < UART_NUM; ++i) {
        FUNC4(i, NULL);
    }
    FUNC2(FUNC3());

    if (args) {
        FUNC0(args);
    }

    return ret;
}