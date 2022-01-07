
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int OP_ROTCL ;
 int OP_ROTCR ;
 int R0 ;
 int R2 ;
 int R8 ;
 int emitCMPIM (TYPE_1__*,int) ;
 int emitMOV (TYPE_1__*,int ,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int ,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateCMPIM(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);

    emitMOVLLG(b, 16);
    emitMOV(b, R0, R2);
    emitMOVLL4(b, R8, 0, R0);
    emitSHIFT(b, R2, OP_ROTCR);
    emitCMPIM(b, imm);
    emitSHIFT(b, R2, OP_ROTCL);
    emitMOV(b, R2, R0);
    emitMOVLSG(b, 16);

    ++b->cycles;
    b->pc += 2;
}
