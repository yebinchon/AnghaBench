
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ AV_RL32 (int const*) ;

__attribute__((used)) static int check_checksum(const uint8_t *header, int size)
{
    int x;
    uint32_t sum = 0;

    for (x = 0; x < size; x += 4)
        sum += AV_RL32(&header[x]);

    return sum;
}
