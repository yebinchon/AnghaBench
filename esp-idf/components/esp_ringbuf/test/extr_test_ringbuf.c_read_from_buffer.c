
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RingbufferType_t ;
typedef int RingbufHandle_t ;
typedef scalar_t__ BaseType_t ;


 size_t CONT_DATA_LEN ;
 scalar_t__ RINGBUF_TYPE_ALLOWSPLIT ;
 scalar_t__ RINGBUF_TYPE_BYTEBUF ;
 scalar_t__ RINGBUF_TYPE_NOSPLIT ;
 int SMP_TEST_ITERATIONS ;
 int TEST_ASSERT_MESSAGE (int,char*) ;
 int TIMEOUT_TICKS ;
 char* continuous_data ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int rx_done ;
 int tx_done ;
 int vRingbufferReturnItem (int ,char*) ;
 scalar_t__ xRingbufferReceive (int ,size_t*,int ) ;
 scalar_t__ xRingbufferReceiveSplit (int ,void**,void**,size_t*,size_t*,int ) ;
 scalar_t__ xRingbufferReceiveUpTo (int ,size_t*,int ,size_t) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void read_from_buffer(RingbufHandle_t buffer, RingbufferType_t buf_type, size_t max_rec_size)
{
    for (int iter = 0; iter < SMP_TEST_ITERATIONS; iter++) {
        size_t bytes_rec = 0;
        while (bytes_rec < CONT_DATA_LEN) {
            size_t item_size, item_size2;
            char *item_data, *item_data2;


            if (buf_type == RINGBUF_TYPE_NOSPLIT) {
                item_data = (char *)xRingbufferReceive(buffer, &item_size, TIMEOUT_TICKS);
            } else if (buf_type == RINGBUF_TYPE_ALLOWSPLIT) {
                BaseType_t ret = xRingbufferReceiveSplit(buffer, (void **)&item_data, (void **)&item_data2, &item_size, &item_size2, TIMEOUT_TICKS);
                TEST_ASSERT_MESSAGE(ret == pdTRUE, "Failed to receive any item");
            } else {
                item_data = (char *)xRingbufferReceiveUpTo(buffer, &item_size, TIMEOUT_TICKS, max_rec_size);
            }


            TEST_ASSERT_MESSAGE(item_data != ((void*)0), "Failed to receive an item");
            if (buf_type == RINGBUF_TYPE_BYTEBUF) {
                TEST_ASSERT_MESSAGE(item_size <= max_rec_size, "Received data exceeds max size");
            }
            for (int i = 0; i < item_size; i++) {

                TEST_ASSERT_MESSAGE(item_data[i] == continuous_data[bytes_rec + i], "Received data is corrupted");
            }
            bytes_rec += item_size;
            vRingbufferReturnItem(buffer, item_data);
            if (buf_type == RINGBUF_TYPE_ALLOWSPLIT && item_data2 != ((void*)0)) {

                for (int i = 0; i < item_size2; i++) {
                    TEST_ASSERT_MESSAGE(item_data2[i] == continuous_data[bytes_rec + i], "Received split data is corrupted");
                }
                bytes_rec += item_size2;
                vRingbufferReturnItem(buffer, item_data2);
            }
        }
        TEST_ASSERT_MESSAGE(bytes_rec == CONT_DATA_LEN, "Total length of received data is incorrect");
        xSemaphoreGive(rx_done);
        xSemaphoreTake(tx_done, portMAX_DELAY);
    }
}
