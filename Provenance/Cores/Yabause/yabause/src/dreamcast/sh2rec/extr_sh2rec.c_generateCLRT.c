
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int OP_AND ;
 int R0 ;
 int R1 ;
 int R3 ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;

__attribute__((used)) static void generateCLRT(uint16_t inst, sh2rec_block_t *b) {
    emitMOVLLG(b, 16);
    emitMOVI(b, 0xFE, R1);
    emitALU(b, R3, R0, OP_AND);
    emitMOVLSG(b, 16);

    ++b->cycles;
    b->pc += 2;
}
