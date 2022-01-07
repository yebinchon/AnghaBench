
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
do_cbz_cnbz(arm_saved_state64_t *regs64, uint32_t regwidth, uint32_t instr, int is_cbz, user_addr_t *pc_out)
{
 uint32_t regno;
 uint64_t regval;
 uint64_t offset;


 regno = (instr & 0x1f);
 assert(regno <= 31);
 regval = get_saved_state64_regno(regs64, regno, 1);


 if (regwidth == 32) {
  regval &= 0xFFFFFFFFULL;
 }


 offset = extract_address_literal_sign_extended(instr, 5, 19);


 if ((is_cbz && regval == 0) || ((!is_cbz) && regval != 0)) {

  *pc_out = regs64->pc + offset;
 } else {

  *pc_out = regs64->pc + 4;
 }
}
