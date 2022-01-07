
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_16__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int OP_ADD ;
 int OP_ROTCR ;
 int OP_SHLL ;
 int R0 ;
 int R15 ;
 int R2 ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitBT (TYPE_1__*,int) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLM (TYPE_1__*,int ,int ) ;
 int emitMOVLP (TYPE_1__*,int ,int ) ;
 int emitRTS (TYPE_1__*) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;
 int sh2rec_rec_inst (TYPE_1__*,int) ;

__attribute__((used)) static void generateBFS(uint16_t inst, sh2rec_block_t *b) {
    int disp = INSTRUCTION_CD(inst);
    uint32_t val = b->pc + 4;
    int n = (((uint32_t)b->ptr) & 0x03) ? 3 : 4;

    emitMOVLLG(b, 16);
    emitMOVLI(b, n, R2);
    emitSHIFT(b, R0, OP_ROTCR);
    emitMOVI(b, 0, R0);
    emitBT(b, 1);
    emitMOVI(b, disp, R0);
    emitSHIFT(b, R0, OP_SHLL);

    if(((uint32_t)b->ptr) & 0x03) {
        emitBRA(b, 3);
        emitALU(b, R2, R0, OP_ADD);
        emit16(b, 0);
    }
    else {
        emitBRA(b, 2);
        emitALU(b, R2, R0, OP_ADD);
    }

    emit32(b, val);
    emitMOVLM(b, R0, R15);


    b->pc += 2;
    sh2rec_rec_inst(b, 1);

    emitRTS(b);
    emitMOVLP(b, R15, R0);

    ++b->cycles;

}
