
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ESP_LOGI (int ,char*,char const*) ;
 int ESP_LOG_BUFFER_HEX (int ,int *,int) ;
 int TAG ;

__attribute__((used)) static void hexdump(const char *msg, uint8_t *buf, int len)
{
    ESP_LOGI(TAG, "%s:", msg);
    ESP_LOG_BUFFER_HEX(TAG, buf, len);
}
