
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void clear_blocks_dcbz32_ppc(int16_t *blocks)
{
    register int misal = (unsigned long) blocks & 0x00000010, i = 0;

    if (misal) {
        ((unsigned long *) blocks)[0] = 0L;
        ((unsigned long *) blocks)[1] = 0L;
        ((unsigned long *) blocks)[2] = 0L;
        ((unsigned long *) blocks)[3] = 0L;
        i += 16;
    }
    for (; i < sizeof(int16_t) * 6 * 64 - 31; i += 32)
        __asm__ volatile ("dcbz %0,%1" :: "b" (blocks), "r" (i) : "memory");
    if (misal) {
        ((unsigned long *) blocks)[188] = 0L;
        ((unsigned long *) blocks)[189] = 0L;
        ((unsigned long *) blocks)[190] = 0L;
        ((unsigned long *) blocks)[191] = 0L;
        i += 16;
    }
}
