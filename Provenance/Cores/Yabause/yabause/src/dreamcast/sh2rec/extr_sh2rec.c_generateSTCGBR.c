
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int R0 ;
 int R8 ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void generateSTCGBR(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);

    emitMOVLLG(b, 17);
    emitMOVLS4(b, R0, regn, R8);

    ++b->cycles;
    b->pc += 2;
}
