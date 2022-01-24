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
struct tcp_pcb {int dummy; } ;
typedef  void* err_t ;

/* Variables and functions */
 void* ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  TCP_PRIO_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_error ; 
 int /*<<< orphan*/  test_poll ; 
 int /*<<< orphan*/  test_recv ; 

err_t FUNC6(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    FUNC0(arg);
    FUNC0(err);

    FUNC5(newpcb, TCP_PRIO_MIN);
    FUNC1(newpcb, NULL);
    FUNC4(newpcb, test_recv);
    FUNC2(newpcb, test_error);
    FUNC3(newpcb, test_poll, 0);

    return ERR_OK;
}