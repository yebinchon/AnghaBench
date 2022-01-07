
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int PC; } ;
typedef TYPE_1__ Q68State ;


 int READU16 (TYPE_1__*,int) ;

__attribute__((used)) static inline uint32_t IFETCH(Q68State *state) {
    uint32_t data = READU16(state, state->PC);
    state->PC += 2;
    return data;
}
