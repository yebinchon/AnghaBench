
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* d86_opnd; } ;
typedef TYPE_2__ dis86_t ;
struct TYPE_5__ {int d86_mode; } ;


 int MODE_IPREL ;
 int dtrace_imm_opnd (TYPE_2__*,int,int,int) ;

__attribute__((used)) static void
dtrace_disp_opnd(dis86_t *x, int wbit, int size, int opindex)
{
 dtrace_imm_opnd(x, wbit, size, opindex);



}
