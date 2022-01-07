
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* gr; } ;
struct TYPE_3__ {int h; } ;


 size_t SSP_PC ;
 TYPE_2__ known_regs ;
 int tr_mov16 (int ,int ) ;

__attribute__((used)) static void tr_PC_to_r0(int op)
{
 tr_mov16(0, known_regs.gr[SSP_PC].h);
}
