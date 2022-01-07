
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tftphdr {int dummy; } ;
struct TYPE_3__ {struct tftphdr hdr; } ;
struct TYPE_4__ {TYPE_1__ buf; int counter; } ;


 int BF_ALLOC ;
 int BF_FREE ;
 TYPE_2__* bfs ;
 scalar_t__ current ;
 scalar_t__ newline ;
 int nextone ;
 int prevchar ;

__attribute__((used)) static struct tftphdr *rw_init(int x)
{
  newline = 0;
  prevchar = -1;
  bfs[0].counter = BF_ALLOC;
  current = 0;
  bfs[1].counter = BF_FREE;
  nextone = x;
  return &bfs[0].buf.hdr;
}
