#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int loopback; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ESP_CONSOLE_UART_NUM ; 
 TYPE_2__ UART0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,size_t,int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const char* str, size_t size)
{
    FUNC2(CONFIG_ESP_CONSOLE_UART_NUM);
    UART0.conf0.loopback = 1;
    FUNC1(str, 1, size, stdout);
    FUNC0(stdout);
    FUNC2(CONFIG_ESP_CONSOLE_UART_NUM);
    FUNC3(2 / portTICK_PERIOD_MS);
    UART0.conf0.loopback = 0;
}