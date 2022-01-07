
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int WRITE16 (int *,int,int) ;

__attribute__((used)) static inline void WRITE32(Q68State *state, uint32_t addr, uint32_t data) {
    WRITE16(state, addr, data>>16);
    WRITE16(state, addr+2, data);
}
