
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int s32 ;
struct TYPE_2__ {int (* SetIRQ ) (int ) ;} ;


 TYPE_1__* M68K ;
 int stub1 (int ) ;

__attribute__((used)) static void
c68k_interrupt_handler (u32 level)
{

  M68K->SetIRQ ((s32)level);
}
