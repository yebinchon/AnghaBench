
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void zero_remaining(unsigned int b, unsigned int b_max,
                           const unsigned int *div_blocks, int32_t *buf)
{
    unsigned int count = 0;

    while (b < b_max)
        count += div_blocks[b++];

    if (count)
        memset(buf, 0, sizeof(*buf) * count);
}
