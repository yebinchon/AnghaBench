
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_INV ;
 int thumb32_b_misc_control (int ,int ) ;
 int thumb32_coproc (int ,int ) ;
 int thumb32_dataproc_mod_immed (int ,int ) ;
 int thumb32_dataproc_plain_immed (int ,int ) ;
 int thumb32_dataproc_reg (int ,int ) ;
 int thumb32_dataproc_regshift (int ,int ) ;
 int thumb32_instword_to_arm (int ,int ) ;
 int thumb32_loadbyte_memhint (int ,int ) ;
 int thumb32_loadhalfword_memhint (int ,int ) ;
 int thumb32_loadstore_double_exclusive_table (int ,int ) ;
 int thumb32_loadstore_multiple (int ,int ) ;
 int thumb32_loadword (int ,int ) ;
 int thumb32_longmultiply (int ,int ) ;
 int thumb32_multiply (int ,int ) ;
 int thumb32_store_single (int ,int ) ;
 int vfp_struct_loadstore (int ) ;

__attribute__((used)) static
int dtrace_decode_thumb32(uint16_t instr1, uint16_t instr2)
{
 int op1 = BITS(instr1,11,0x3), op2 = BITS(instr1,4,0x7F), op = BITS(instr2,15,0x1);

 if (op1 == 0x1) {
  if ((op2 & 0x64) == 0)
   return thumb32_loadstore_multiple(instr1,instr2);

  if ((op2 & 0x64) == 0x04)
   return thumb32_loadstore_double_exclusive_table(instr1,instr2);

  if ((op2 & 0x60) == 0x20)
   return thumb32_dataproc_regshift(instr1,instr2);

  if ((op2 & 0x40) == 0x40)
   return thumb32_coproc(instr1,instr2);
 }

 if (op1 == 0x2) {
  if ((op2 & 0x20) == 0 && op == 0)
   return thumb32_dataproc_mod_immed(instr1,instr2);

  if ((op2 & 0x20) == 0x20 && op == 0)
   return thumb32_dataproc_plain_immed(instr1,instr2);

  if (op == 1)
   return thumb32_b_misc_control(instr1,instr2);
 }

 if (op1 == 0x3) {
  if ((op2 & 0x71) == 0)
   return thumb32_store_single(instr1,instr2);

  if ((op2 & 0x71) == 0x10) {
   return vfp_struct_loadstore(thumb32_instword_to_arm(instr1,instr2));
  }

  if ((op2 & 0x67) == 0x01)
   return thumb32_loadbyte_memhint(instr1,instr2);

  if ((op2 & 0x67) == 0x03)
   return thumb32_loadhalfword_memhint(instr1,instr2);

  if ((op2 & 0x67) == 0x05)
   return thumb32_loadword(instr1,instr2);

  if ((op2 & 0x67) == 0x07) {

   return FASTTRAP_T_INV;
  }

  if ((op2 & 0x70) == 0x20)
   return thumb32_dataproc_reg(instr1,instr2);

  if ((op2 & 0x78) == 0x30)
   return thumb32_multiply(instr1,instr2);

  if ((op2 & 0x78) == 0x38)
   return thumb32_longmultiply(instr1,instr2);

  if ((op2 & 0x40) == 0x40)
   return thumb32_coproc(instr1,instr2);
 }

 return FASTTRAP_T_INV;
}
