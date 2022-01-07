
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* xy; int index; } ;
typedef TYPE_1__ HysteresisContext ;



__attribute__((used)) static void pop(HysteresisContext *s, int *x, int *y)
{
    uint32_t val = s->xy[s->index--];

    *x = val >> 16;
    *y = val & 0x0000FFFF;
}
