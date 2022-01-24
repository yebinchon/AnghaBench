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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(const char* signal_name, char* parameter_buf, uint8_t buf_len)
{
    FUNC0("Waiting for signal: [%s]!\n", signal_name);
    if (parameter_buf == NULL) {
        FUNC0("Please press \"Enter\" key once any board send this signal.\n");
    } else {
        FUNC0("Please input parameter value from any board send this signal and press \"Enter\" key.\n");
    }
    FUNC1(parameter_buf, buf_len);
}