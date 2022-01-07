
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int R0 ;
 int R8 ;
 int emitANDI (TYPE_1__*,int) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void generateMOVT(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);

    emitMOVLLG(b, 16);
    emitANDI(b, 0x01);
    emitMOVLS4(b, R0, regn, R8);

    ++b->cycles;
    b->pc += 2;
}
