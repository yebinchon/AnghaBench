
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int OP_ADD ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R4 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateMOVLL0(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);
    int regm = INSTRUCTION_C(inst);

    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R9, 2, R0);
    emitMOVLL4(b, R8, regm, R4);
    emitMOVLL4(b, R8, 0, R1);
    emitJSR(b, R0);
    emitALU(b, R1, R4, OP_ADD);
    emitLDS(b, R10, R_PR);
    emitMOVLS4(b, R0, regn, R8);

    ++b->cycles;
    b->pc += 2;
}
