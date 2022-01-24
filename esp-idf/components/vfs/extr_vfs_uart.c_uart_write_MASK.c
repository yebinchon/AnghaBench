#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ tx_mode; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  (* tx_func ) (int,int) ;} ;

/* Variables and functions */
 scalar_t__ ESP_LINE_ENDINGS_CR ; 
 scalar_t__ ESP_LINE_ENDINGS_LF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** s_ctx ; 
 int /*<<< orphan*/  FUNC3 (int,char) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static ssize_t FUNC5(int fd, const void * data, size_t size)
{
    FUNC2(fd >=0 && fd < 3);
    const char *data_c = (const char *)data;
    /*  Even though newlib does stream locking on each individual stream, we need
     *  a dedicated UART lock if two streams (stdout and stderr) point to the
     *  same UART.
     */
    FUNC0(&s_ctx[fd]->write_lock);
    for (size_t i = 0; i < size; i++) {
        int c = data_c[i];
        if (c == '\n' && s_ctx[fd]->tx_mode != ESP_LINE_ENDINGS_LF) {
            s_ctx[fd]->tx_func(fd, '\r');
            if (s_ctx[fd]->tx_mode == ESP_LINE_ENDINGS_CR) {
                continue;
            }
        }
        s_ctx[fd]->tx_func(fd, c);
    }
    FUNC1(&s_ctx[fd]->write_lock);
    return size;
}