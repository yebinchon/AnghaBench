
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int cpu_size; int type; } ;
struct TYPE_8__ {TYPE_1__ op_size; scalar_t__ op_count; } ;
struct TYPE_7__ {TYPE_3__ extension; int inst; } ;
typedef TYPE_2__ m68k_info ;
typedef TYPE_3__ cs_m68k ;


 int M68K_SIZE_TYPE_CPU ;
 int MCInst_setOpcode (int ,int) ;

__attribute__((used)) static cs_m68k* build_init_op(m68k_info *info, int opcode, int count, int size)
{
 cs_m68k* ext;

 MCInst_setOpcode(info->inst, opcode);

 ext = &info->extension;

 ext->op_count = (uint8_t)count;
 ext->op_size.type = M68K_SIZE_TYPE_CPU;
 ext->op_size.cpu_size = size;

 return ext;
}
