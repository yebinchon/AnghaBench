
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pset_name; int* freq_list; int const freq_limit; int test_size; scalar_t__ dup; } ;
typedef TYPE_2__ spitest_param_set_t ;
struct TYPE_8__ {int data_received; int data_to_send; } ;
struct TYPE_10__ {TYPE_1__ slave_context; int * master_trans; int * slave_trans; } ;
typedef TYPE_3__ spitest_context_t ;
typedef int spi_transaction_t ;
typedef int slave_rxdata_t ;


 int ESP_LOGI (int ,char*,int const) ;
 scalar_t__ ESP_OK ;
 int FULL_DUPLEX ;
 scalar_t__ HALF_DUPLEX_MISO ;
 int MASTER_TAG ;
 int SLAVE_TAG ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (int ) ;
 int TEST_SLAVE_HOST ;
 int get_trans_len (scalar_t__,int *) ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 scalar_t__ spi_slave_free (int ) ;
 int spitest_check_data (int,int *,int *,int const,int const,int) ;
 int spitest_init_transactions (TYPE_2__ const*,TYPE_3__*) ;
 int spitest_master_print_data (int *,int ) ;
 int spitest_slave_print_data (int *,int) ;
 int timing_slave_start (int const,TYPE_2__ const*,TYPE_3__*) ;
 int unity_send_signal (char*) ;
 int vRingbufferReturnItem (int ,int *) ;
 int vTaskDelay (int) ;
 int xQueueSend (int ,int *,int ) ;
 int * xRingbufferReceive (int ,size_t*,int ) ;

__attribute__((used)) static void test_slave_loop(const void *arg1, void* arg2)
{
    const spitest_param_set_t *pset = (spitest_param_set_t*)arg1;
    spitest_context_t* context = (spitest_context_t*)arg2;
    ESP_LOGI(SLAVE_TAG, "****************** %s ***************", pset->pset_name);
    spitest_init_transactions(pset, context);

    const int *timing_speed_array = pset->freq_list;
    for (int i=0; ; i++ ) {
        const int freq = timing_speed_array[i];
        if (freq==0) break;
        if (pset->freq_limit != 0 && freq > pset->freq_limit) break;

        ESP_LOGI(MASTER_TAG, "==============> %dk", timing_speed_array[i]/1000);

        timing_slave_start(freq, pset, context);


        for (int i = 0; i < pset->test_size; i ++) {
            xQueueSend( context->slave_context.data_to_send, &context->slave_trans[i], portMAX_DELAY );

        }

        vTaskDelay(50/portTICK_PERIOD_MS);
        unity_send_signal("slave ready");

        for( int i= 0; i < pset->test_size; i ++ ) {

            ESP_LOGI( MASTER_TAG, "===== test%d =====", i );

            vTaskDelay(20);

            spi_transaction_t *t = &context->master_trans[i];
            int len = get_trans_len(pset->dup, t);
            spitest_master_print_data(t, FULL_DUPLEX);

            size_t rcv_len;
            slave_rxdata_t *rcv_data = xRingbufferReceive( context->slave_context.data_received, &rcv_len, portMAX_DELAY );
            spitest_slave_print_data(rcv_data, 1);


            const bool check_master_data = 0;
            bool check_slave_data = (pset->dup!=HALF_DUPLEX_MISO);
            const bool check_len = 1;
            TEST_ESP_OK(spitest_check_data(len, t, rcv_data, check_master_data, check_len, check_slave_data));

            vRingbufferReturnItem( context->slave_context.data_received, rcv_data );
        }
        TEST_ASSERT(spi_slave_free(TEST_SLAVE_HOST) == ESP_OK);
    }
}
