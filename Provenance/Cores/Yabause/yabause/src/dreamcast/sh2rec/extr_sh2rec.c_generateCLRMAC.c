
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int emitCLRMAC (TYPE_1__*) ;

__attribute__((used)) static void generateCLRMAC(uint16_t inst, sh2rec_block_t *b) {
    emitCLRMAC(b);

    ++b->cycles;
    b->pc += 2;
}
