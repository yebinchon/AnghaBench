
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int buffer; } ;


 TYPE_1__ data_buffer ;
 int esp_receive_apple_data_source (int ,scalar_t__) ;
 int esp_timer_stop (int ) ;
 int memset (int ,int ,scalar_t__) ;
 int periodic_timer ;

__attribute__((used)) static void periodic_timer_callback(void* arg)
{
    esp_timer_stop(periodic_timer);
    if (data_buffer.len > 0) {
        esp_receive_apple_data_source(data_buffer.buffer, data_buffer.len);
        memset(data_buffer.buffer, 0, data_buffer.len);
        data_buffer.len = 0;
    }
}
