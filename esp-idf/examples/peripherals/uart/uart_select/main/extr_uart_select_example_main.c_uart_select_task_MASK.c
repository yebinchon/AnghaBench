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
struct TYPE_3__ {int baud_rate; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; } ;
typedef  TYPE_1__ uart_config_t ;
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  UART_DATA_8_BITS ; 
 int /*<<< orphan*/  UART_HW_FLOWCTRL_DISABLE ; 
 int /*<<< orphan*/  UART_NUM_0 ; 
 int /*<<< orphan*/  UART_PARITY_DISABLE ; 
 int /*<<< orphan*/  UART_STOP_BITS_1 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC8 (int,char*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(void *arg)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    FUNC11(UART_NUM_0, &uart_config);
    FUNC10(UART_NUM_0, 2*1024, 0, 0, NULL, 0);

    while (1) {
        int fd;

        if ((fd = FUNC7("/dev/uart/0", O_RDWR)) == -1) {
            FUNC0(TAG, "Cannot open UART");
            FUNC12(5000 / portTICK_PERIOD_MS);
            continue;
        }

        // We have a driver now installed so set up the read/write functions to use driver also.
        FUNC6(0);

        while (1) {
            int s;
            fd_set rfds;
            struct timeval tv = {
                .tv_sec = 5,
                .tv_usec = 0,
            };

            FUNC4(&rfds);
            FUNC3(fd, &rfds);

            s = FUNC9(fd + 1, &rfds, NULL, NULL, &tv);

            if (s < 0) {
                FUNC0(TAG, "Select failed: errno %d", errno);
                break;
            } else if (s == 0) {
                FUNC1(TAG, "Timeout has been reached and nothing has been received");
            } else {
                if (FUNC2(fd, &rfds)) {
                    char buf;
                    if (FUNC8(fd, &buf, 1) > 0) {
                        FUNC1(TAG, "Received: %c", buf);
                        // Note: Only one character was read even the buffer contains more. The other characters will
                        // be read one-by-one by subsequent calls to select() which will then return immediately
                        // without timeout.
                    } else {
                        FUNC0(TAG, "UART read error");
                        break;
                    }
                } else {
                    FUNC0(TAG, "No FD has been set in select()");
                    break;
                }
            }
        }

        FUNC5(fd);
    }

    FUNC13(NULL);
}