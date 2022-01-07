
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_jmp (int ) ;
 scalar_t__ out ;
 int output_w32 (int) ;
 int set_jump_target (int ,int) ;
 int ** stubs ;

do_unalignedwritestub(int n)
{
  set_jump_target(stubs[n][1],(int)out);
  output_w32(0xef000000);
  emit_jmp(stubs[n][2]);
}
