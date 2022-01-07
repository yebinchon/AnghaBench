
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytestream; int bytestream_start; int outstanding_count; scalar_t__ outstanding_byte; int range; } ;
typedef TYPE_1__ RangeCoder ;


 int av_log2 (int ) ;

__attribute__((used)) static inline int get_rac_count(RangeCoder *c)
{
    int x = c->bytestream - c->bytestream_start + c->outstanding_count;
    if (c->outstanding_byte >= 0)
        x++;
    return 8 * x - av_log2(c->range);
}
