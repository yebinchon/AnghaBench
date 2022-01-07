
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int A_OP_MVN ;


 int EOP_C_DOP_IMM (int,int,int,int,int,int,int) ;

__attribute__((used)) static void emith_op_imm2(int cond, int s, int op, int rd, int rn, unsigned int imm)
{
 int ror2;
 u32 v;

 switch (op) {
 case 130:
  rn = 0;
  if (~imm < 0x10000) {
   imm = ~imm;
   op = A_OP_MVN;
  }
  break;

 case 131:
 case 128:
 case 133:
 case 129:
 case 132:
  if (s == 0 && imm == 0)
   return;
  break;
 }

 for (v = imm, ror2 = 0; ; ror2 -= 8/2) {

  for (; v && !(v & 3); v >>= 2)
   ror2--;

  EOP_C_DOP_IMM(cond, op, s, rn, rd, ror2 & 0x0f, v & 0xff);

  v >>= 8;
  if (v == 0)
   break;
  if (op == 130)
   op = 129;
  if (op == A_OP_MVN)
   op = 132;
  rn = rd;
 }
}
