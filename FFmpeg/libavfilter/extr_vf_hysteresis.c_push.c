
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int* map; int* xy; size_t index; } ;
typedef TYPE_1__ HysteresisContext ;



__attribute__((used)) static void push(HysteresisContext *s, int x, int y, int w)
{
    s->map[x + y * w] = 0xff;
    s->xy[++s->index] = (uint16_t)(x) << 16 | (uint16_t)y;
}
