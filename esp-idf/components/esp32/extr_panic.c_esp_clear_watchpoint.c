
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void esp_clear_watchpoint(int no)
{

    int dbreakc = 0;
    if (no == 0) {
        asm volatile(
            "wsr.dbreakc0 %0\n" ::"r"(dbreakc));

    } else {
        asm volatile(
            "wsr.dbreakc1 %0\n" ::"r"(dbreakc));

    }
}
