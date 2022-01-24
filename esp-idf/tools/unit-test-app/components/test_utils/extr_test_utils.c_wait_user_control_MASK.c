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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sign ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(char* parameter_buf, uint8_t buf_len)
{
    char *buffer = parameter_buf;
    char sign[5];
    uint8_t buffer_len = buf_len - 1;

    if (parameter_buf == NULL) {
        buffer = sign;
        buffer_len = sizeof(sign) - 1;
    }
    // workaround that unity_gets (UartRxString) will not set '\0' correctly
    FUNC0(buffer, buffer_len);

    FUNC1(buffer, buffer_len);
}