
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int R0 ;
 int R8 ;
 int emitMOVLL4 (TYPE_1__*,int ,int ,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int ,int ) ;
 int emitORI (TYPE_1__*,int) ;

__attribute__((used)) static void generateORI(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);

    emitMOVLL4(b, R8, 0, R0);
    emitORI(b, imm);
    emitMOVLS4(b, R0, 0, R8);

    ++b->cycles;
    b->pc += 2;
}
