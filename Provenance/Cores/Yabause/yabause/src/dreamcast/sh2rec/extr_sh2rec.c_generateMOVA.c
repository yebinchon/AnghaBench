
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int R2 ;
 int R8 ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void generateMOVA(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);
    uint32_t addr = ((b->pc + 4) & 0xFFFFFFFC) + (imm << 2);

    if(((uint32_t)b->ptr) & 0x03) {
        emitMOVLI(b, 1, R2);
        emitBRA(b, 2);
        emitMOVLS4(b, R2, 0, R8);
        emit32(b, addr);
    }
    else {
        emitMOVLI(b, 1, R2);
        emitBRA(b, 3);
        emitMOVLS4(b, R2, 0, R8);
        emit16(b, 0);
        emit32(b, addr);
    }

    ++b->cycles;
    b->pc += 2;
}
