
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int cmp_nop(const void *a, const void *b)
{
    return *(const uint16_t*)a - *(const uint16_t*)b;
}
