
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP56RangeCoder ;


 int vp8_rac_get (int *) ;

__attribute__((used)) static int vp8_rac_get_uint(VP56RangeCoder *c, int bits)
{
    int value = 0;

    while (bits--) {
        value = (value << 1) | vp8_rac_get(c);
    }

    return value;
}
