
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int cycles; scalar_t__ pc; scalar_t__ ptr; } ;
typedef TYPE_1__ sh2rec_block_t ;
typedef scalar_t__ int32_t ;


 int INSTRUCTION_BCD (int ) ;
 int R0 ;
 int R15 ;
 int R2 ;
 int emit16 (TYPE_1__*,int ) ;
 int emit32 (TYPE_1__*,int) ;
 int emitBRA (TYPE_1__*,int) ;
 int emitMOVLI (TYPE_1__*,int,int ) ;
 int emitMOVLM (TYPE_1__*,int ,int ) ;
 int emitMOVLP (TYPE_1__*,int ,int ) ;
 int emitRTS (TYPE_1__*) ;
 int sh2rec_rec_inst (TYPE_1__*,int) ;

__attribute__((used)) static void generateBRA(uint16_t inst, sh2rec_block_t *b) {
    int disp = INSTRUCTION_BCD(inst);
    int32_t val;

    if(disp & 0x00000800) {
        disp |= 0xFFFFF000;
    }

    val = b->pc + 4 + (disp << 1);

    emitMOVLI(b, 1, R2);

    if(((uint32_t)b->ptr) & 0x03) {
        emitBRA(b, 3);
        emitMOVLM(b, R2, R15);
        emit16(b, 0);
    }
    else {
        emitBRA(b, 2);
        emitMOVLM(b, R2, R15);
    }

    emit32(b, (uint32_t )val);


    b->pc += 2;
    sh2rec_rec_inst(b, 1);

    emitRTS(b);
    emitMOVLP(b, R15, R0);

    b->cycles += 2;
}
