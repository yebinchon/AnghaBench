
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_7__ {TYPE_2__ up; TYPE_1__ to; } ;
typedef TYPE_3__ Block ;



__attribute__((used)) static int get_block_size(const Block *b)
{
    return (b->to.y - b->up.y + 1) * (b->to.x - b->up.x + 1);
}
