
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int op_match; int op_mask; int spec_ea; int * cycles; } ;
typedef TYPE_1__ opcode_struct ;
struct TYPE_7__ {char* fname_add; int match_add; int mask_add; } ;


 int EA_MODE_NONE ;
 int NUM_CPUS ;
 int UNSPECIFIED ;
 TYPE_5__* g_ea_info_table ;
 int get_oper_cycles (TYPE_1__*,int,int) ;
 int sprintf (int ,char*,char*) ;
 scalar_t__ strcmp (int ,int ) ;

void set_opcode_struct(opcode_struct* src, opcode_struct* dst, int ea_mode)
{
 int i;

 *dst = *src;

 for(i=0;i<NUM_CPUS;i++)
  dst->cycles[i] = get_oper_cycles(dst, ea_mode, i);
 if(strcmp(dst->spec_ea, UNSPECIFIED) == 0 && ea_mode != EA_MODE_NONE)
  sprintf(dst->spec_ea, "%s", g_ea_info_table[ea_mode].fname_add);
 dst->op_mask |= g_ea_info_table[ea_mode].mask_add;
 dst->op_match |= g_ea_info_table[ea_mode].match_add;
}
