
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int OP_AND ;
 int R0 ;
 int R2 ;
 int R8 ;
 int emit16 (TYPE_1__*,int) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitMOVWI (TYPE_1__*,int,int ) ;

__attribute__((used)) static void generateLDCSR(uint16_t inst, sh2rec_block_t *b) {
    int regm = INSTRUCTION_B(inst);

    emitMOVWI(b, 2, R2);
    emitMOVLL4(b, R8, regm, R0);
    emitBRA(b, 1);
    emitALU(b, R2, R0, OP_AND);
    emit16(b, 0x03F3);
    emitMOVLSG(b, 16);

    ++b->cycles;
    b->pc += 2;
}
