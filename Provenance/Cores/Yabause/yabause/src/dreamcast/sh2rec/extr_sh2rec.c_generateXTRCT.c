
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int OP_XTRCT ;
 int generateALUOP (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void generateXTRCT(uint16_t inst, sh2rec_block_t *b) {
    generateALUOP(inst, b, OP_XTRCT);
    b->pc += 2;
}
