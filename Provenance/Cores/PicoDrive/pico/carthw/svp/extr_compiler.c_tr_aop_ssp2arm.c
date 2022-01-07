
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_OP_ADD ;
 int A_OP_AND ;
 int A_OP_CMP ;
 int A_OP_EOR ;
 int A_OP_ORR ;
 int A_OP_SUB ;
 int tr_unhandled () ;

__attribute__((used)) static int tr_aop_ssp2arm(int op)
{
 switch (op) {
  case 1: return A_OP_SUB;
  case 3: return A_OP_CMP;
  case 4: return A_OP_ADD;
  case 5: return A_OP_AND;
  case 6: return A_OP_ORR;
  case 7: return A_OP_EOR;
 }

 tr_unhandled();
 return 0;
}
