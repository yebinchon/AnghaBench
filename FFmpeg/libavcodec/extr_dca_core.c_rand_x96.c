
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int x96_rand; } ;
typedef TYPE_1__ DCACoreDecoder ;



__attribute__((used)) static int rand_x96(DCACoreDecoder *s)
{
    s->x96_rand = 1103515245U * s->x96_rand + 12345U;
    return (s->x96_rand & 0x7fffffff) - 0x40000000;
}
