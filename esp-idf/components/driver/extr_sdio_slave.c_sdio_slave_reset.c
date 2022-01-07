
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int recv_flush_data () ;
 int recv_reset_counter () ;
 int send_flush_data () ;
 int send_reset_counter () ;

esp_err_t sdio_slave_reset(void)
{
    send_flush_data();
    send_reset_counter();
    recv_flush_data();
    recv_reset_counter();
    return ESP_OK;
}
