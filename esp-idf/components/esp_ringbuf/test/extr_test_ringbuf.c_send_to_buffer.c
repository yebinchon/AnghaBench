
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RingbufHandle_t ;


 size_t CONT_DATA_LEN ;
 int SMP_TEST_ITERATIONS ;
 int TEST_ASSERT_MESSAGE (int,char*) ;
 int TIMEOUT_TICKS ;
 int * continuous_data ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 size_t rand () ;
 int rx_done ;
 int tx_done ;
 scalar_t__ xRingbufferSend (int ,void*,size_t,int ) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void send_to_buffer(RingbufHandle_t buffer, size_t max_item_size)
{
    for (int iter = 0; iter < SMP_TEST_ITERATIONS; iter++) {
        size_t bytes_sent = 0;
        size_t next_item_size;

        while (bytes_sent < CONT_DATA_LEN) {

            next_item_size = rand() % (max_item_size + 1);
            if (next_item_size + bytes_sent > CONT_DATA_LEN) {
                next_item_size = CONT_DATA_LEN - bytes_sent;
            }


            TEST_ASSERT_MESSAGE(xRingbufferSend(buffer, (void *)&(continuous_data[bytes_sent]), next_item_size, TIMEOUT_TICKS) == pdTRUE, "Failed to send an item");
            bytes_sent += next_item_size;
        }
        xSemaphoreGive(tx_done);
        xSemaphoreTake(rx_done, portMAX_DELAY);
    }
}
