
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int inverse (int ) ;

__attribute__((used)) static void multiswap_invert_keys(uint32_t keys[12])
{
    int i;
    for (i = 0; i < 5; i++)
        keys[i] = inverse(keys[i]);
    for (i = 6; i < 11; i++)
        keys[i] = inverse(keys[i]);
}
