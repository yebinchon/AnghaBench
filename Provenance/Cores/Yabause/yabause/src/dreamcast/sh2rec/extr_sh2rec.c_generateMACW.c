
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_18__ {int cycles; int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int OP_AND ;
 int OP_OR ;
 int R0 ;
 int R10 ;
 int R15 ;
 int R2 ;
 int R3 ;
 int R4 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int R_SR ;
 int emitADDI (TYPE_1__*,int,int ) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitANDI (TYPE_1__*,int) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDC (TYPE_1__*,int ,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMACW (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLM (TYPE_1__*,int ,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVWM (TYPE_1__*,int ,int ) ;
 int emitSTC (TYPE_1__*,int ,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateMACW(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);
    int regm = INSTRUCTION_C(inst);

    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R8, regm, R4);
    emitMOVLL4(b, R9, 1, R0);
    emitADDI(b, 2, R4);
    emitMOVLS4(b, R4, regm, R8);
    emitJSR(b, R0);
    emitADDI(b, -2, R4);
    emitMOVWM(b, R0, R15);
    emitMOVLL4(b, R8, regn, R4);
    emitMOVLL4(b, R9, 1, R0);
    emitADDI(b, 2, R4);
    emitMOVLS4(b, R4, regn, R8);
    emitJSR(b, R0);
    emitADDI(b, -2, R4);
    emitMOVWM(b, R0, R15);
    emitSTC(b, R_SR, R2);
    emitMOVI(b, 0xFD, R3);
    emitMOVLM(b, R0, R15);
    emitMOVLLG(b, 16);
    emitALU(b, R2, R3, OP_AND);
    emitANDI(b, 0x02);
    emitALU(b, R0, R3, OP_OR);
    emitLDC(b, R3, R_SR);
    emitMACW(b, R15, R15);
    emitLDC(b, R2, R_SR);
    emitLDS(b, R10, R_PR);

    b->cycles += 3;
    b->pc += 2;
}
