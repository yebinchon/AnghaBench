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
 scalar_t__ HALF_DUPLEX_MOSI ; 
 int /*<<< orphan*/  MASTER_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int const,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int const,TYPE_2__ const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(const void *arg1, void* arg2)
{
    const spitest_param_set_t *test_cfg = (spitest_param_set_t*)arg1;
    spitest_context_t* context = (spitest_context_t*)arg2;
    spi_device_handle_t spi;
    FUNC6(test_cfg, context);
    const int *timing_speed_array = test_cfg->freq_list;

    FUNC0(MASTER_TAG, "****************** %s ***************", test_cfg->pset_name);
    for (int i=0; ; i++ ) {
        const int freq = timing_speed_array[i];
        if (freq==0) break;
        if (test_cfg->freq_limit && freq > test_cfg->freq_limit) break;

        FUNC0(MASTER_TAG, "==============> %dk", freq/1000);
        FUNC9(&spi, freq, test_cfg, context);

        FUNC10("slave ready");

        for( int j= 0; j < test_cfg->test_size; j ++ ) {
            //wait for both master and slave end
            FUNC0( MASTER_TAG, "=> test%d", j );
            //send master tx data
            FUNC12(20);

            spi_transaction_t *t = &context->master_trans[j];
            FUNC1 (FUNC4(spi, t) );
            int len = FUNC2(test_cfg->dup, t);
            FUNC7(t, len);

            size_t rcv_len;
            slave_rxdata_t *rcv_data = FUNC13( context->slave_context.data_received, &rcv_len, portMAX_DELAY );
            FUNC8(rcv_data, false);

            //check result
            bool check_master_data = (test_cfg->dup != HALF_DUPLEX_MOSI &&
                        (test_cfg->master_limit == 0 || freq <= test_cfg->master_limit));
            const bool check_slave_data = false;
            const bool check_len = false;
            if (!check_master_data) {
                FUNC0(MASTER_TAG, "skip data check due to duplex mode or freq.");
            } else {
                FUNC1(FUNC5(len, t, rcv_data, check_master_data,
                    check_len, check_slave_data));
            }
            //clean
            FUNC11( context->slave_context.data_received, rcv_data );
        }
        FUNC3(spi);
    }
}