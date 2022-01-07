
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int get_v210 () ;

__attribute__((used)) static void randomize_buffers(uint32_t *src0, uint32_t *src1, int len)
{
    for (int i = 0; i < len; i++) {
        uint32_t value = get_v210();
        src0[i] = value;
        src1[i] = value;
    }
}
