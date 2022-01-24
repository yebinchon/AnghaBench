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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int const) ; 
 int /*<<< orphan*/  UART_NUM_1 ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int const) ; 

int FUNC3(const char* logName, const char* data)
{
    const int len = FUNC1(data);
    const int txBytes = FUNC2(UART_NUM_1, data, len);
    FUNC0(logName, "Wrote %d bytes", txBytes);
    return txBytes;
}