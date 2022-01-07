
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int READU16 (int *,int) ;
 int jit_PC ;

__attribute__((used)) static inline uint32_t jit_IFETCH(Q68State *state) {
    uint32_t data = READU16(state, jit_PC);
    jit_PC += 2;
    return data;
}
