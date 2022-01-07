
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* map; } ;
typedef TYPE_1__ HysteresisContext ;



__attribute__((used)) static int passed(HysteresisContext *s, int x, int y, int w)
{
    return s->map[x + y * w];
}
