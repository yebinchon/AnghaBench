
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
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
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateLDSMPR(uint16_t inst, sh2rec_block_t *b) {
    int regm = INSTRUCTION_B(inst);

    emitMOVLL4(b, R9, 2, R0);
    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R8, regm, R4);
    emitMOVI(b, 4, R1);
    emitALU(b, R4, R1, OP_ADD);
    emitJSR(b, R0);
    emitMOVLS4(b, R1, regm, R8);
    emitLDS(b, R10, R_PR);
    emitMOVLSG(b, 21);

    ++b->cycles;
    b->pc += 2;
}
