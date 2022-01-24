#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ (* receive ) (TYPE_3__*,int*,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_2__* eth; TYPE_3__ parent; scalar_t__ packets_remain; } ;
typedef  TYPE_1__ emac_dm9051_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* stack_input ) (TYPE_2__*,int*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DM9051_ISR ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ETH_MAX_PACKET_SIZE ; 
 int ISR_PR ; 
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC4 (TYPE_3__*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *arg)
{
    emac_dm9051_t *emac = (emac_dm9051_t *)arg;
    uint8_t status = 0;
    uint8_t *buffer = NULL;
    uint32_t length = 0;
    while (1) {
        // block indefinitely until some task notifies me
        FUNC6(pdFALSE, portMAX_DELAY);
        /* clear interrupt status */
        FUNC0(emac, DM9051_ISR, &status);
        FUNC1(emac, DM9051_ISR, status);
        /* packet received */
        if (status & ISR_PR) {
            do {
                length = ETH_MAX_PACKET_SIZE;
                buffer = (uint8_t *)FUNC3(length, MALLOC_CAP_DMA);
                if (emac->parent.receive(&emac->parent, buffer, &length) == ESP_OK) {
                    /* pass the buffer to stack (e.g. TCP/IP layer) */
                    if (length) {
                        emac->eth->stack_input(emac->eth, buffer, length);
                    } else {
                        FUNC2(buffer);
                    }
                } else {
                    FUNC2(buffer);
                }
            } while (emac->packets_remain);
        }
    }
    FUNC7(NULL);
}