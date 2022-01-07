
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int OP_SHAR ;
 int generateSHIFT (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void generateSHAR(uint16_t inst, sh2rec_block_t *b) {
    generateSHIFT(inst, b, OP_SHAR);
    b->pc += 2;
}
