#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uart_port_t ;
struct TYPE_4__ {size_t rd; size_t wr; int* data; } ;
typedef  TYPE_1__ uart_pat_rb_t ;
struct TYPE_5__ {TYPE_1__ rx_pattern_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__** p_uart_obj ; 
 int /*<<< orphan*/ * uart_spinlock ; 

int FUNC3(uart_port_t uart_num)
{
    FUNC0((p_uart_obj[uart_num]), "uart driver error", (-1));
    FUNC1(&uart_spinlock[uart_num]);
    uart_pat_rb_t *pat_pos = &p_uart_obj[uart_num]->rx_pattern_pos;
    int pos = -1;
    if (pat_pos != NULL && pat_pos->rd != pat_pos->wr) {
        pos = pat_pos->data[pat_pos->rd];
    }
    FUNC2(&uart_spinlock[uart_num]);
    return pos;
}