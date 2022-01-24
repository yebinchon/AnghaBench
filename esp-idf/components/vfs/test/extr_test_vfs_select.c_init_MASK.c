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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 TYPE_2__ UART1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(int *uart_fd, int *socket_fd)
{
    FUNC4();

    FUNC5();
    UART1.conf0.loopback = 1;

    *uart_fd = FUNC2("/dev/uart/1", O_RDWR);
    FUNC0(*uart_fd, -1, "Cannot open UART");

    FUNC1(1);

    *socket_fd = FUNC3();
}