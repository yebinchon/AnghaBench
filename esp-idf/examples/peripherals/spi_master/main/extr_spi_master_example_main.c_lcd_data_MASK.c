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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_4__ {int length; void* user; int /*<<< orphan*/  const* tx_buffer; } ;
typedef  TYPE_1__ spi_transaction_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC3(spi_device_handle_t spi, const uint8_t *data, int len)
{
    esp_err_t ret;
    spi_transaction_t t;
    if (len==0) return;             //no need to send anything
    FUNC1(&t, 0, sizeof(t));       //Zero out the transaction
    t.length=len*8;                 //Len is in bytes, transaction length is in bits.
    t.tx_buffer=data;               //Data
    t.user=(void*)1;                //D/C needs to be set to 1
    ret=FUNC2(spi, &t);  //Transmit!
    FUNC0(ret==ESP_OK);            //Should have had no issues.
}