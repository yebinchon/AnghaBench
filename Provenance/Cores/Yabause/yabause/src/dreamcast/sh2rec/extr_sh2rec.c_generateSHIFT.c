
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int OP_ROTCL ;
 int OP_ROTCR ;
 int R0 ;
 int R2 ;
 int R8 ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSHIFT (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void generateSHIFT(uint16_t inst, sh2rec_block_t *b, int op) {
    int regn = INSTRUCTION_B(inst);

    emitMOVLLG(b, 16);
    emitMOVLL4(b, R8, regn, R2);
    emitSHIFT(b, R0, OP_ROTCR);
    emitSHIFT(b, R2, op);
    emitSHIFT(b, R0, OP_ROTCL);
    emitMOVLS4(b, R2, regn, R8);
    emitMOVLSG(b, 16);

    ++b->cycles;
}
