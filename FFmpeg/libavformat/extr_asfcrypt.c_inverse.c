
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t inverse(uint32_t v)
{


    uint32_t inverse = v * v * v;


    inverse *= 2 - v * inverse;
    inverse *= 2 - v * inverse;
    inverse *= 2 - v * inverse;
    return inverse;
}
