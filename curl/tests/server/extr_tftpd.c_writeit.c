
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tftphdr {int dummy; } ;
struct testcase {int dummy; } ;
struct TYPE_3__ {struct tftphdr hdr; } ;
struct TYPE_4__ {int counter; TYPE_1__ buf; } ;


 int BF_ALLOC ;
 int BF_FREE ;
 TYPE_2__* bfs ;
 size_t current ;
 int write_behind (struct testcase*,int) ;

__attribute__((used)) static int writeit(struct testcase *test, struct tftphdr * volatile *dpp,
                   int ct, int convert)
{
  bfs[current].counter = ct;
  current = !current;
  if(bfs[current].counter != BF_FREE)
    write_behind(test, convert);
  bfs[current].counter = BF_ALLOC;
  *dpp = &bfs[current].buf.hdr;
  return ct;
}
