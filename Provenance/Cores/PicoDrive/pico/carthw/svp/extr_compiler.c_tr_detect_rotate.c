
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSL (int ,int ,int) ;
 int EOP_ORR_REG_LSR (int ,int ,int ,int) ;
 int PROGRAM (int) ;
 int n_in_ops ;
 int tr_bank_read (int ) ;
 int tr_bank_write (int ) ;

__attribute__((used)) static int tr_detect_rotate(unsigned int op, int *pc, int imm)
{




 if (op != 0x02e3 || PROGRAM(*pc) != 0x04e3 || PROGRAM(*pc + 1) != 0x000f) return 0;

 tr_bank_read(0);
 EOP_MOV_REG_LSL(0, 0, 4);
 EOP_ORR_REG_LSR(0, 0, 0, 16);
 tr_bank_write(0);
 (*pc) += 2;
 n_in_ops += 2;
 return 3;
}
