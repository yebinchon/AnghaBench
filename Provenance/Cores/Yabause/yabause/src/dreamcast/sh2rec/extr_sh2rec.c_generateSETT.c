
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitORI (TYPE_1__*,int) ;

__attribute__((used)) static void generateSETT(uint16_t inst, sh2rec_block_t *b) {
    emitMOVLLG(b, 16);
    emitORI(b, 0x01);
    emitMOVLSG(b, 16);

    ++b->cycles;
    b->pc += 2;
}
