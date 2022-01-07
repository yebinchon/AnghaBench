
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int pc; int w; int memmsk; } ;


 TYPE_1__ d ;
 int read_pc () ;

__attribute__((used)) static s32 relPC(void)
{
  read_pc();
  return (d.pc + d.w - 2) & d.memmsk;
}
