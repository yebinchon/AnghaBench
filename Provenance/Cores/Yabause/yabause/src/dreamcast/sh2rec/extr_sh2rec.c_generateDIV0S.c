
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int OP_AND ;
 int OP_OR ;
 int OP_ROTCL ;
 int OP_SHLR ;
 int R0 ;
 int R2 ;
 int R3 ;
 int R4 ;
 int R5 ;
 int R8 ;
 int R_SR ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitANDI (TYPE_1__*,int) ;
 int emitDIV0S (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;
 int emitSHLL8 (TYPE_1__*,int ) ;
 int emitSTC (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateDIV0S(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);
    int regm = INSTRUCTION_C(inst);

    emitMOVLLG(b, 16);
    emitMOVLL4(b, R8, regn, R2);
    emitMOVI(b, 0x03, R4);
    emitANDI(b, 0xF2);
    emitMOVLL4(b, R8, regm, R3);
    emitSHLL8(b, R4);
    emitSHIFT(b, R0, OP_SHLR);
    emitDIV0S(b, R3, R2);
    emitSTC(b, R_SR, R5);
    emitALU(b, R4, R5, OP_AND);
    emitSHIFT(b, R0, OP_ROTCL);
    emitALU(b, R5, R0, OP_OR);
    emitMOVLSG(b, 16);

    ++b->cycles;
    b->pc += 2;
}
