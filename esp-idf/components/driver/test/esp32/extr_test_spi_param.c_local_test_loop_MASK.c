#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* freq_list; int const freq_limit; int test_size; scalar_t__ dup; int const master_limit; int /*<<< orphan*/  pset_name; } ;
typedef  TYPE_2__ spitest_param_set_t ;
struct TYPE_8__ {int /*<<< orphan*/  data_received; } ;
struct TYPE_10__ {TYPE_1__ slave_context; int /*<<< orphan*/ * master_trans; } ;
typedef  TYPE_3__ spitest_context_t ;
typedef  int /*<<< orphan*/  spi_transaction_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
typedef  int /*<<< orphan*/  slave_rxdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ HALF_DUPLEX_MISO ; 
 scalar_t__ HALF_DUPLEX_MOSI ; 
 int /*<<< orphan*/  MASTER_TAG ; 
 int /*<<< orphan*/  SLAVE_TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEST_SLAVE_HOST ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const,TYPE_2__ const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int const,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(const void* arg1, void* arg2)
{
    const spitest_param_set_t *pset = arg1;
    spitest_context_t *context = arg2;
    spi_device_handle_t spi;
    FUNC9(pset, context);
    const int *timing_speed_array = pset->freq_list;

    FUNC0(MASTER_TAG, "****************** %s ***************", pset->pset_name);
    for (int i = 0; ; i++) {
        const int freq = timing_speed_array[i];
        if (freq==0) break;
        if (pset->freq_limit && freq > pset->freq_limit) break;

        FUNC0(MASTER_TAG, "======> %dk", freq / 1000);
        FUNC4(&spi, freq, pset, context);

        for (int k = 0; k < pset->test_size; k++) {
            //wait for both master and slave end
            FUNC0(MASTER_TAG, "=> test%d", k);
            //send master tx data
            FUNC13(9);

            spi_transaction_t *t = &context->master_trans[k];
            FUNC2(FUNC6(spi, t));
            int len = FUNC3(pset->dup, t);
            FUNC10(t, len);

            size_t rcv_len;
            slave_rxdata_t *rcv_data = FUNC14(context->slave_context.data_received, &rcv_len, portMAX_DELAY);
            FUNC11(rcv_data, true);

            //check result
            bool check_master_data = (pset->dup!=HALF_DUPLEX_MOSI &&
                    (pset->master_limit==0 || freq <= pset->master_limit));
            bool check_slave_data = (pset->dup!=HALF_DUPLEX_MISO);
            const bool check_len = true;
            if (!check_master_data) FUNC0(MASTER_TAG, "skip master data check");
            if (!check_slave_data) FUNC0(SLAVE_TAG, "skip slave data check");

            FUNC2(FUNC8(len, t, rcv_data, check_master_data, check_len, check_slave_data));
            //clean
            FUNC12(context->slave_context.data_received, rcv_data);
        }
        FUNC5(spi);
        FUNC1(FUNC7(TEST_SLAVE_HOST) == ESP_OK);
    }
}