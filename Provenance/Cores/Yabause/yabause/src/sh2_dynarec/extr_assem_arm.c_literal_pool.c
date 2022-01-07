
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assert (int) ;
 int literalcount ;
 int** literals ;
 scalar_t__ out ;
 int output_w32 (int) ;

void literal_pool(int n)
{
  if(!literalcount) return;
  if(n) {
    if((int)out-literals[0][0]<4096-n) return;
  }
  u32 *ptr;
  int i;
  for(i=0;i<literalcount;i++)
  {
    ptr=(u32 *)literals[i][0];
    u32 offset=(u32)out-(u32)ptr-8;
    assert(offset<4096);
    assert(!(offset&3));
    *ptr|=offset;
    output_w32(literals[i][1]);
  }
  literalcount=0;
}
