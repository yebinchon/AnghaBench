
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
struct TYPE_3__ {int (* readb_func ) (int) ;} ;
typedef TYPE_1__ Q68State ;


 int stub1 (int) ;

__attribute__((used)) static inline int32_t READS8(Q68State *state, uint32_t addr) {
    return (int8_t) state->readb_func(addr & 0xFFFFFF);
}
