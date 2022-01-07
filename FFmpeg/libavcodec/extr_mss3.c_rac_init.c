
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int low; int range; scalar_t__ got_error; int const* src; int const* src_end; } ;
typedef TYPE_1__ RangeCoder ;


 int FFMIN (int,int) ;

__attribute__((used)) static void rac_init(RangeCoder *c, const uint8_t *src, int size)
{
    int i;

    c->src = src;
    c->src_end = src + size;
    c->low = 0;
    for (i = 0; i < FFMIN(size, 4); i++)
        c->low = (c->low << 8) | *c->src++;
    c->range = 0xFFFFFFFF;
    c->got_error = 0;
}
