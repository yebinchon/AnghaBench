
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ arm_saved_state64_t ;


 int assert (int) ;
 int extract_address_literal_sign_extended (int,int,int) ;
 int get_saved_state64_regno (TYPE_1__*,int,int) ;

__attribute__((used)) static void
do_tbz_tbnz(arm_saved_state64_t *regs64, uint32_t instr, int is_tbz, user_addr_t *pc_out)
{
 uint64_t offset, regval;
 uint32_t bit_index, b5, b40, regno, bit_set;


 offset = extract_address_literal_sign_extended(instr, 5, 14);


 b5 = (instr >> 31);
 b40 = ((instr >> 19) & 0x1f);
 bit_index = (b5 << 5) | b40;
 assert(bit_index <= 63);


 regno = (instr & 0x1f);
 assert(regno <= 31);
 regval = get_saved_state64_regno(regs64, regno, 1);


 bit_set = ((regval & (1 << bit_index)) != 0);

 if ((is_tbz && (!bit_set)) || ((!is_tbz) && bit_set)) {

  *pc_out = regs64->pc + offset;
 } else {

  *pc_out = regs64->pc + 4;
 }
}
