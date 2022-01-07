
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
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;

__attribute__((used)) static void generateLDCGBR(uint16_t inst, sh2rec_block_t *b) {
    int regm = INSTRUCTION_B(inst);

    emitMOVLL4(b, R8, regm, R0);
    emitMOVLSG(b, 17);

    ++b->cycles;
    b->pc += 2;
}
