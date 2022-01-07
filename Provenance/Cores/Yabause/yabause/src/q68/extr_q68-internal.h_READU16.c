
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int (* readw_func ) (int) ;} ;
typedef TYPE_1__ Q68State ;


 int stub1 (int) ;

__attribute__((used)) static inline uint32_t READU16(Q68State *state, uint32_t addr) {
    return state->readw_func(addr & 0xFFFFFF);
}
