
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sh2rec_block_t ;


 int EMIT_INST ;

__attribute__((used)) static inline void emitMOVLLG(sh2rec_block_t *b, int imm) {
    uint16_t inst = 0xC600 | (imm & 0xFF);
    EMIT_INST;
}
