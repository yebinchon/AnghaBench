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
typedef  int uart_select_notif_t ;
struct TYPE_3__ {int /*<<< orphan*/  select_sem; int /*<<< orphan*/  errorfds; int /*<<< orphan*/  errorfds_orig; int /*<<< orphan*/  writefds; int /*<<< orphan*/  writefds_orig; int /*<<< orphan*/  readfds; int /*<<< orphan*/  readfds_orig; } ;
typedef  TYPE_1__ uart_select_args_t ;
typedef  int /*<<< orphan*/  uart_port_t ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  UART_SELECT_ERROR_NOTIF 130 
#define  UART_SELECT_READ_NOTIF 129 
#define  UART_SELECT_WRITE_NOTIF 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_registered_select_lock ; 
 int s_registered_select_num ; 
 TYPE_1__** s_registered_selects ; 

__attribute__((used)) static void FUNC5(uart_port_t uart_num, uart_select_notif_t uart_select_notif, BaseType_t *task_woken)
{
    FUNC3(&s_registered_select_lock);
    for (int i = 0; i < s_registered_select_num; ++i) {
        uart_select_args_t *args = s_registered_selects[i];
        if (args) {
            switch (uart_select_notif) {
                case UART_SELECT_READ_NOTIF:
                    if (FUNC0(uart_num, &args->readfds_orig)) {
                        FUNC1(uart_num, args->readfds);
                        FUNC2(args->select_sem, task_woken);
                    }
                    break;
                case UART_SELECT_WRITE_NOTIF:
                    if (FUNC0(uart_num, &args->writefds_orig)) {
                        FUNC1(uart_num, args->writefds);
                        FUNC2(args->select_sem, task_woken);
                    }
                    break;
                case UART_SELECT_ERROR_NOTIF:
                    if (FUNC0(uart_num, &args->errorfds_orig)) {
                        FUNC1(uart_num, args->errorfds);
                        FUNC2(args->select_sem, task_woken);
                    }
                    break;
            }
        }
    }
    FUNC4(&s_registered_select_lock);
}