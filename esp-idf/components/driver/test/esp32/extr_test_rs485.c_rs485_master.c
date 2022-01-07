
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ esp_err_t ;


 int BUF_SIZE ;
 scalar_t__ ESP_OK ;
 int PACKETS_NUMBER ;
 int PACKET_READ_TICS ;
 int TEST_ASSERT (int) ;
 int UART_NUM1 ;
 int buffer_fill_random (int *,int) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 scalar_t__ print_packet_data (char*,int *,int) ;
 int printf (char*,...) ;
 int rs485_init () ;
 int uart_driver_delete (int ) ;
 int uart_read_bytes (int ,int *,int,int) ;
 int uart_write_bytes (int ,char*,int) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;

__attribute__((used)) static void rs485_master(void)
{
    uint16_t err_count = 0, good_count = 0;
    rs485_init();
    uint8_t* master_buffer = (uint8_t*) malloc(BUF_SIZE);
    uint8_t* slave_buffer = (uint8_t*) malloc(BUF_SIZE);

    unity_wait_for_signal("Slave_ready");
    unity_send_signal("Master_started");
    printf("Start recieve loop.\r\n");
    for(int i = 0; i < PACKETS_NUMBER; i++) {

        buffer_fill_random(master_buffer, BUF_SIZE);

        esp_err_t status = print_packet_data("Send ", master_buffer, BUF_SIZE);
        TEST_ASSERT(status == ESP_OK);
        uart_write_bytes(UART_NUM1, (char*)master_buffer, BUF_SIZE);

        int len = uart_read_bytes(UART_NUM1, slave_buffer, BUF_SIZE, (PACKET_READ_TICS * 2));

        if (len > 2) {

            esp_err_t status = print_packet_data("Received ", slave_buffer, len);
            if (status == ESP_OK) {
                good_count++;
                printf("Received: %d\r\n", good_count);
            } else {
                err_count++;
                printf("Errors: %d\r\n", err_count);
            }
        }
        else {
            printf("Incorrect answer from slave.\r\n");
            err_count++;
        }
    }

    free(master_buffer);
    uart_driver_delete(UART_NUM1);
    TEST_ASSERT(err_count <= 1);
    printf("Test completed. Received packets = %d, errors = %d\r\n", (uint16_t)good_count, (uint16_t)err_count);
}
