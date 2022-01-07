
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sh2rec_block_t ;


 int EMIT_INST ;

__attribute__((used)) static inline void emitALU(sh2rec_block_t *b, int m, int n, uint16_t op) {
    uint16_t inst = (n << 8) | (m << 4) | op;
    EMIT_INST;
}
