
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_jmp (int ) ;
 int literal_pool (int ) ;
 int literalcount ;
 int** literals ;
 scalar_t__ out ;
 int set_jump_target (int,int) ;

void literal_pool_jumpover(int n)
{
  if(!literalcount) return;
  if(n) {
    if((int)out-literals[0][0]<4096-n) return;
  }
  int jaddr=(int)out;
  emit_jmp(0);
  literal_pool(0);
  set_jump_target(jaddr,(int)out);
}
