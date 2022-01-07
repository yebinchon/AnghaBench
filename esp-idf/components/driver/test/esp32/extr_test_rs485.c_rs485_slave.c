
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
 int free (int *) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ print_packet_data (char*,int *,int) ;
 int printf (char*,...) ;
 int rs485_init () ;
 int uart_driver_delete (int ) ;
 int uart_read_bytes (int ,int *,int ,int) ;
 int uart_wait_tx_done (int ,int) ;
 int uart_write_bytes (int ,char*,int) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;

__attribute__((used)) static void rs485_slave(void)
{
    rs485_init();
    uint8_t* slave_data = (uint8_t*) malloc(BUF_SIZE);
    uint16_t err_count = 0, good_count = 0;
    printf("Start recieve loop.\r\n");
    unity_send_signal("Slave_ready");
    unity_wait_for_signal("Master_started");
    for(int pack_count = 0; pack_count < PACKETS_NUMBER; pack_count++) {

        int len = uart_read_bytes(UART_NUM1, slave_data, BUF_SIZE, (PACKET_READ_TICS * 2));

        if (len > 2) {
            esp_err_t status = print_packet_data("Received ", slave_data, len);


            if (status == ESP_OK) {
                uart_write_bytes(UART_NUM1, (char*)slave_data, len);
                good_count++;
            } else {
                printf("Incorrect packet received.\r\n");
                err_count++;
            }
        } else {
            printf("Incorrect data packet[%d] received.\r\n", pack_count);
            err_count++;
        }
    }
    printf("Test completed. Received packets = %d, errors = %d\r\n", good_count, err_count);

    uart_wait_tx_done(UART_NUM1, PACKET_READ_TICS);
    free(slave_data);
    uart_driver_delete(UART_NUM1);
    TEST_ASSERT(err_count < 2);
}
