
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int cycles; int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int OP_OR ;
 int OP_ROTCL ;
 int OP_ROTCR ;
 int OP_TST ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R2 ;
 int R4 ;
 int R5 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOV (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateTAS(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);

    emitMOVLL4(b, R9, 0, R0);
    emitSTS(b, R_PR, R10);
    emitJSR(b, R0);
    emitMOVLL4(b, R8, regn, R4);
    emitMOV(b, R0, R5);
    emitMOVLLG(b, 16);
    emitMOVI(b, 0x80, R2);
    emitMOVLL4(b, R8, regn, R4);
    emitSHIFT(b, R0, OP_ROTCR);
    emitALU(b, R5, R5, OP_TST);
    emitSHIFT(b, R0, OP_ROTCL);
    emitMOVLL4(b, R9, 3, R1);
    emitMOVLSG(b, 16);
    emitJSR(b, R1);
    emitALU(b, R2, R5, OP_OR);
    emitLDS(b, R10, R_PR);

    b->cycles += 4;
    b->pc += 2;
}
