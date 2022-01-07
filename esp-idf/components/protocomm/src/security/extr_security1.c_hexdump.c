
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ESP_LOGD (int ,char*,char const*) ;
 int ESP_LOG_BUFFER_HEX_LEVEL (int ,int *,int,int ) ;
 int ESP_LOG_DEBUG ;
 int TAG ;

__attribute__((used)) static void hexdump(const char *msg, uint8_t *buf, int len)
{
    ESP_LOGD(TAG, "%s:", msg);
    ESP_LOG_BUFFER_HEX_LEVEL(TAG, buf, len, ESP_LOG_DEBUG);
}
