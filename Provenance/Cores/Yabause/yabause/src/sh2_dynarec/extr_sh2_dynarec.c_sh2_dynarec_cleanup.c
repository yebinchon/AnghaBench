
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BASE_ADDR ;
 int TARGET_SIZE_2 ;
 scalar_t__ jump_dirty ;
 scalar_t__ jump_in ;
 scalar_t__ jump_out ;
 int ll_clear (scalar_t__) ;
 scalar_t__ munmap (void*,int) ;
 int printf (char*) ;

void sh2_dynarec_cleanup()
{
  int n;
  if (munmap ((void *)BASE_ADDR, 1<<TARGET_SIZE_2) < 0) {printf("munmap() failed\n");}
  for(n=0;n<2048;n++) ll_clear(jump_in+n);
  for(n=0;n<2048;n++) ll_clear(jump_out+n);
  for(n=0;n<2048;n++) ll_clear(jump_dirty+n);
}
