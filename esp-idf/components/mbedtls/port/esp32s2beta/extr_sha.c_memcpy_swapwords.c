
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int assert (int) ;

__attribute__((used)) static void memcpy_swapwords(void *to, const void *from, size_t num_bytes)
{
    uint32_t *to_words = (uint32_t *)to;
    const uint32_t *from_words = (const uint32_t *)from;
    assert(num_bytes % 8 == 0);
    for (int i = 0; i < num_bytes / 4; i += 2) {
        to_words[i] = from_words[i+1];
        to_words[i+1] = from_words[i];
    }
    asm volatile ("memw");
}
