
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_13__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int OP_ADD ;
 int OP_ROTCR ;
 int OP_SHLL ;
 int R0 ;
 int R2 ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitADDI (TYPE_1__*,int,int ) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitBT (TYPE_1__*,int) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitRTS (TYPE_1__*) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateBF(uint16_t inst, sh2rec_block_t *b) {
    int disp = INSTRUCTION_CD(inst);
    uint32_t val = b->pc + 2;

    emitMOVLLG(b, 16);
    emitMOVLI(b, 4, R2);
    emitSHIFT(b, R0, OP_ROTCR);
    emitMOVI(b, 0, R0);
    emitBT(b, 2);
    emitMOVI(b, disp, R0);
    emitSHIFT(b, R0, OP_SHLL);
    emitADDI(b, 2, R0);
    emitRTS(b);
    emitALU(b, R2, R0, OP_ADD);
    if(((uint32_t)b->ptr) & 0x03)
        emit16(b, 0);
    emit32(b, val);

    b->cycles += 2;

}
