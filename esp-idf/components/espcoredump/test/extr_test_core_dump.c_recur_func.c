
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCI_UNALIGN_PTR ;
 int crash_flags ;
 int printf (char*,unsigned long) ;

void recur_func(void)
{
    static int rec_cnt;
    unsigned short *ptr = (unsigned short *)0x5;
    volatile int cnt = 0;
    int i = 0;

    if (rec_cnt++ > 2) {
        return;
    }
    for (i = 0; i < 4; i++) {
        cnt++;
        if(i == 2) {
            recur_func();
            break;
        }
    }

    if(crash_flags & TCI_UNALIGN_PTR) {
        printf("Write to unaligned address 0x%lx.\n", (unsigned long)ptr);
        *ptr = 0xDEAD;
    }
}
