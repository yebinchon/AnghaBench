
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int pc; int cycles; } ;
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
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateMOVBSG(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);

    emitMOVLL4(b, R8, 0, R5);
    emitMOVLLG(b, 17);
    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R9, 3, R1);
    emitMOVI(b, imm, R4);
    emitALU(b, R4, R4, OP_EXTUB);
    emitJSR(b, R1);
    emitALU(b, R0, R4, OP_ADD);
    emitLDS(b, R10, R_PR);

    ++b->cycles;
    b->pc += 2;
}
