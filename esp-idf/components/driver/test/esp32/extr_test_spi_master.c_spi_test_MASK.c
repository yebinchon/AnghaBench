#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_4__ {int length; char* tx_buffer; char* rx_buffer; int addr; int cmd; } ;
typedef  TYPE_1__ spi_transaction_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(spi_device_handle_t handle, int num_bytes) {
    esp_err_t ret;
    int x;
    bool success = true;
    FUNC7(num_bytes);
    char *sendbuf=FUNC2((num_bytes+3)&(~3), MALLOC_CAP_DMA);
    char *recvbuf=FUNC2((num_bytes+3)&(~3), MALLOC_CAP_DMA);
    for (x=0; x<num_bytes; x++) {
        sendbuf[x]=FUNC5()&0xff;
        recvbuf[x]=0x55;
    }

    spi_transaction_t t;
    FUNC3(&t, 0, sizeof(t));
    t.length=num_bytes*8;
    t.tx_buffer=sendbuf;
    t.rx_buffer=recvbuf;
    t.addr=0xA00000000000000FL;
    t.cmd=0x55;

    FUNC4("Transmitting %d bytes...\n", num_bytes);
    ret=FUNC6(handle, &t);
    FUNC0(ret==ESP_OK);

    FUNC7(num_bytes);
    for (x=0; x<num_bytes; x++) {
        if (sendbuf[x]!=(FUNC5()&0xff)) {
            FUNC4("Huh? Sendbuf corrupted at byte %d\n", x);
            FUNC0(0);
        }
        if (sendbuf[x]!=recvbuf[x]) break;
    }
    if (x!=num_bytes) {
        int from=x-16;
        if (from<0) from=0;
        success = false;
        FUNC4("Error at %d! Sent vs recved: (starting from %d)\n" , x, from);
        for (int i=0; i<32; i++) {
            if (i+from<num_bytes) FUNC4("%02X ", sendbuf[from+i]);
        }
        FUNC4("\n");
        for (int i=0; i<32; i++) {
            if (i+from<num_bytes) FUNC4("%02X ", recvbuf[from+i]);
        }
        FUNC4("\n");
    }

    if (success) FUNC4("Success!\n");
    FUNC1(sendbuf);
    FUNC1(recvbuf);
    return success;
}