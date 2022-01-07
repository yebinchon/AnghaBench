
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int pc; int w; int (* mem_callb ) (unsigned int,int ) ;unsigned int memmsk; int private_data; } ;


 TYPE_1__ d ;
 int stub1 (unsigned int,int ) ;

__attribute__((used)) static int read_pc(void)
{
  unsigned int pc = d.pc;






  d.w = d.mem_callb(pc & d.memmsk, d.private_data);
  pc += 2;

  d.pc = pc;
  return d.w;
}
