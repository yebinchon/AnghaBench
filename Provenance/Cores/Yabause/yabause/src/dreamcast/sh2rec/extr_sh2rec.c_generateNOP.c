
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;



__attribute__((used)) static void generateNOP(uint16_t inst, sh2rec_block_t *b) {
    ++b->cycles;
    b->pc += 2;
}
