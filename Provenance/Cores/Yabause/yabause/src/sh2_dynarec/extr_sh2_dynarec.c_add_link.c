
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int inv_debug (char*,int,int,int) ;
 scalar_t__ jump_out ;
 int ll_add (scalar_t__,int,void*) ;

void add_link(u32 vaddr,void *src)
{
  u32 page=(vaddr&0xDFFFFFFF)>>12;
  if(page>1024) page=1024+(page&1023);
  inv_debug("add_link: %x -> %x (%d)\n",(int)src,vaddr,page);
  ll_add(jump_out+page,vaddr,src);


}
