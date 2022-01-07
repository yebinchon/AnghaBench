
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** link_addr ;
 size_t linkcount ;
 int slave ;

add_to_linker(int addr,int target,int ext)
{
  link_addr[linkcount][0]=addr;
  link_addr[linkcount][1]=target|slave;
  link_addr[linkcount][2]=ext;
  linkcount++;
}
