
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftphdr {int dummy; } ;
struct testcase {int dummy; } ;
struct TYPE_2__ {struct tftphdr hdr; } ;
struct bf {scalar_t__ counter; TYPE_1__ buf; } ;


 scalar_t__ BF_FREE ;
 struct bf* bfs ;
 size_t current ;
 int read_ahead (struct testcase*,int) ;

__attribute__((used)) static int readit(struct testcase *test, struct tftphdr **dpp,
                  int convert )
{
  struct bf *b;

  bfs[current].counter = BF_FREE;
  current = !current;

  b = &bfs[current];
  if(b->counter == BF_FREE)
    read_ahead(test, convert);

  *dpp = &b->buf.hdr;
  return b->counter;
}
