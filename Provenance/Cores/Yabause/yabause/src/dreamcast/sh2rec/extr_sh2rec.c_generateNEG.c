
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int OP_NEG ;
 int R2 ;
 int R3 ;
 int R8 ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void generateNEG(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);
    int regm = INSTRUCTION_C(inst);

    emitMOVLL4(b, R8, regm, R3);
    emitALU(b, R3, R2, OP_NEG);
    emitMOVLS4(b, R2, regn, R8);

    ++b->cycles;
    b->pc += 2;
}
