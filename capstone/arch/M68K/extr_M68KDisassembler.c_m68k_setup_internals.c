
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int pc; unsigned int type; int address_mask; scalar_t__ ir; int * inst; } ;
typedef TYPE_1__ m68k_info ;
typedef int MCInst ;
 int TYPE_68000 ;
 int TYPE_68010 ;
 void* TYPE_68020 ;
 int TYPE_68030 ;
 int TYPE_68040 ;

__attribute__((used)) static void m68k_setup_internals(m68k_info* info, MCInst* inst, unsigned int pc, unsigned int cpu_type)
{
 info->inst = inst;
 info->pc = pc;
 info->ir = 0;
 info->type = cpu_type;
 info->address_mask = 0xffffffff;

 switch(info->type) {
  case 133:
   info->type = TYPE_68000;
   info->address_mask = 0x00ffffff;
   break;
  case 132:
   info->type = TYPE_68010;
   info->address_mask = 0x00ffffff;
   break;
  case 128:
   info->type = TYPE_68020;
   info->address_mask = 0x00ffffff;
   break;
  case 131:
   info->type = TYPE_68020;
   info->address_mask = 0xffffffff;
   break;
  case 130:
   info->type = TYPE_68030;
   info->address_mask = 0xffffffff;
   break;
  case 129:
   info->type = TYPE_68040;
   info->address_mask = 0xffffffff;
   break;
  default:
   info->address_mask = 0;
   return;
 }
}
