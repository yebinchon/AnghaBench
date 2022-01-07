
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int OP_ADD ;
 int R0 ;
 int R15 ;
 int R2 ;
 int R8 ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLM (TYPE_1__*,int ,int ) ;
 int emitMOVLP (TYPE_1__*,int ,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitRTS (TYPE_1__*) ;
 int sh2rec_rec_inst (TYPE_1__*,int) ;

__attribute__((used)) static void generateBSRF(uint16_t inst, sh2rec_block_t *b) {
    int regm = INSTRUCTION_B(inst);
    uint32_t val = b->pc + 4;

    emitMOVLI(b, 1, R0);

    if(((uint32_t)b->ptr) & 0x03) {
        emitBRA(b, 3);
        emitMOVLL4(b, R8, regm, R2);
        emit16(b, 0);
    }
    else {
        emitBRA(b, 2);
        emitMOVLL4(b, R8, regm, R2);
    }

    emit32(b, val);
    emitALU(b, R0, R2, OP_ADD);
    emitMOVLSG(b, 21);
    emitMOVLM(b, R2, R15);


    b->pc += 2;
    sh2rec_rec_inst(b, 1);

    emitRTS(b);
    emitMOVLP(b, R15, R0);

    b->cycles += 2;
}
