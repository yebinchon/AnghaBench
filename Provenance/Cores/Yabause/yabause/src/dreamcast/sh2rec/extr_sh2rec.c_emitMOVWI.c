
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sh2rec_block_t ;


 int EMIT_INST ;

__attribute__((used)) static inline void emitMOVWI(sh2rec_block_t *b, int d, int n) {
    uint16_t inst = 0x9000 | (n << 8) | (d);
    EMIT_INST;
}
