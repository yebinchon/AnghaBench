
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint32_t ;
struct TYPE_4__ {int* A; } ;
typedef TYPE_1__ Q68State ;


 int const READU16 (TYPE_1__*,int) ;

__attribute__((used)) static inline uint32_t POP16(Q68State *state) {
    const uint32_t data = READU16(state, state->A[7]);
    state->A[7] += 2;
    return data;
}
