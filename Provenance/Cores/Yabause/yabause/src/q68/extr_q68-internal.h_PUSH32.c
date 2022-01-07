
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* A; } ;
typedef TYPE_1__ Q68State ;


 int WRITE32 (TYPE_1__*,int,int ) ;

__attribute__((used)) static inline void PUSH32(Q68State *state, uint32_t data) {
    state->A[7] -= 4;
    WRITE32(state, state->A[7], data);
}
