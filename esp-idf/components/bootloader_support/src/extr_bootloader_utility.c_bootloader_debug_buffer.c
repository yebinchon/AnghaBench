
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ESP_LOGD (int ,char*,char const*,char*) ;
 int TAG ;
 int assert (int) ;

void bootloader_debug_buffer(const void *buffer, size_t length, const char *label)
{

    assert(length <= 128);
    const uint8_t *bytes = (const uint8_t *)buffer;
    char hexbuf[length * 2 + 1];
    hexbuf[length * 2] = 0;
    for (int i = 0; i < length; i++) {
        for (int shift = 0; shift < 2; shift++) {
            uint8_t nibble = (bytes[i] >> (shift ? 0 : 4)) & 0x0F;
            if (nibble < 10) {
                hexbuf[i * 2 + shift] = '0' + nibble;
            } else {
                hexbuf[i * 2 + shift] = 'a' + nibble - 10;
            }
        }
    }
    ESP_LOGD(TAG, "%s: %s", label, hexbuf);

}
