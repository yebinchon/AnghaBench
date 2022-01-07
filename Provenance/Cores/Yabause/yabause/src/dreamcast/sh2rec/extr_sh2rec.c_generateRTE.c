
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_18__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int OP_ADD ;
 int OP_AND ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R15 ;
 int R2 ;
 int R4 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emit16 (TYPE_1__*,int) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLM (TYPE_1__*,int ,int ) ;
 int emitMOVLP (TYPE_1__*,int ,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitMOVWI (TYPE_1__*,int,int ) ;
 int emitRTS (TYPE_1__*) ;
 int emitSTS (TYPE_1__*,int ,int ) ;
 int sh2rec_rec_inst (TYPE_1__*,int) ;

__attribute__((used)) static void generateRTE(uint16_t inst, sh2rec_block_t *b) {
    emitMOVLL4(b, R9, 2, R0);
    emitSTS(b, R_PR, R10);
    emitJSR(b, R0);
    emitMOVLL4(b, R8, 15, R4);
    emitMOVLL4(b, R9, 2, R1);
    emitMOVLL4(b, R8, 15, R4);
    emitMOVI(b, 4, R2);
    emitALU(b, R2, R4, OP_ADD);
    emitMOVLM(b, R0, R15);
    emitALU(b, R4, R2, OP_ADD);
    emitJSR(b, R1);
    emitMOVLS4(b, R2, 15, R8);
    emitMOVWI(b, 1, R1);
    emitBRA(b, 1);
    emitALU(b, R1, R0, OP_AND);
    emit16(b, 0x03F3);
    emitLDS(b, R10, R_PR);
    emitMOVLSG(b, 16);


    b->pc += 2;
    sh2rec_rec_inst(b, 1);

    emitRTS(b);
    emitMOVLP(b, R15, R0);

    b->cycles += 4;
}
