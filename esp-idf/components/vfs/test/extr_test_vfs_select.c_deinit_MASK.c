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
struct TYPE_3__ {scalar_t__ loopback; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 TYPE_2__ UART1 ; 
 int /*<<< orphan*/  UART_NUM_1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int uart_fd, int socket_fd)
{
    FUNC1(1);
    FUNC0(uart_fd);
    UART1.conf0.loopback = 0;
    FUNC2(UART_NUM_1);

    FUNC0(socket_fd);
}