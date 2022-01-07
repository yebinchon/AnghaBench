
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int R1 ;
 int R10 ;
 int R4 ;
 int R5 ;
 int R8 ;
 int R9 ;
 int R_MACH ;
 int R_PR ;
 int emitADDI (TYPE_1__*,int,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateSTSMMACH(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);

    emitSTS(b, R_MACH, R5);
    emitMOVLL4(b, R9, 5, R1);
    emitMOVLL4(b, R8, regn, R4);
    emitSTS(b, R_PR, R10);
    emitADDI(b, -4, R4);
    emitJSR(b, R1);
    emitMOVLS4(b, R4, regn, R8);
    emitLDS(b, R10, R_PR);

    ++b->cycles;
    b->pc += 2;
}
