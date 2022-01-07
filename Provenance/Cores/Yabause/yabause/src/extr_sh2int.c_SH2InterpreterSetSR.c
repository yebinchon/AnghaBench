
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int all; } ;
struct TYPE_6__ {TYPE_1__ SR; } ;
struct TYPE_7__ {TYPE_2__ regs; } ;
typedef TYPE_3__ SH2_struct ;



void SH2InterpreterSetSR(SH2_struct *context, u32 value)
{
    context->regs.SR.all = value;
}
