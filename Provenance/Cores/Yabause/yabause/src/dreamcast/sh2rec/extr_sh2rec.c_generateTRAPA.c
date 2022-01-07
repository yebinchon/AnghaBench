
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_19__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int OP_ADD ;
 int OP_EXTUB ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R4 ;
 int R5 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitADDI (TYPE_1__*,int,int ) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOV (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitNOP (TYPE_1__*) ;
 int emitRTS (TYPE_1__*) ;
 int emitSHLL2 (TYPE_1__*,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateTRAPA(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);
    int disp = (((uint32_t)(b->ptr)) & 0x03) ? 5 : 6;
    uint32_t val = b->pc + 2;

    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R8, 15, R4);
    emitMOVLL4(b, R9, 5, R1);
    emitMOVLLG(b, 16);
    emitADDI(b, -4, R4);
    emitJSR(b, R1);
    emitMOV(b, R0, R5);
    emitMOVLL4(b, R8, 15, R4);
    emitMOVLL4(b, R9, 5, R1);
    emitADDI(b, -8, R4);
    emitMOVLI(b, disp, R5);
    emitJSR(b, R1);
    emitMOVLS4(b, R4, 15, R8);
    emitMOVI(b, imm, R4);
    emitALU(b, R4, R4, OP_EXTUB);
    emitMOVLL4(b, R9, 2, R1);
    emitMOVLLG(b, 18);
    emitSHLL2(b, R4);
    emitJSR(b, R1);
    emitALU(b, R0, R4, OP_ADD);
    emitLDS(b, R10, R_PR);
    emitRTS(b);
    emitNOP(b);
    if(((uint32_t)b->ptr) & 0x03)
        emit16(b, 0);
    emit32(b, val);

    b->cycles += 8;
}
