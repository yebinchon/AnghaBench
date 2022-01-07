
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;

esp_err_t esp_set_watchpoint(int no, void *adr, int size, int flags)
{
    int x;
    if (no < 0 || no > 1) {
        return ESP_ERR_INVALID_ARG;
    }
    if (flags & (~0xC0000000)) {
        return ESP_ERR_INVALID_ARG;
    }
    int dbreakc = 0x3F;

    for (x = 0; x < 7; x++) {
        if (size == (1 << x)) {
            break;
        }
        dbreakc <<= 1;
    }
    if (x == 7) {
        return ESP_ERR_INVALID_ARG;
    }

    dbreakc = (dbreakc & 0x3f) | flags;

    if (no == 0) {
        asm volatile(
            "wsr.dbreaka0 %0\n" "wsr.dbreakc0 %1\n" ::"r"(adr), "r"(dbreakc));


    } else {
        asm volatile(
            "wsr.dbreaka1 %0\n" "wsr.dbreakc1 %1\n" ::"r"(adr), "r"(dbreakc));


    }
    return ESP_OK;
}
