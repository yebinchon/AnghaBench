
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int (* writeb_func ) (int,int ) ;} ;
typedef TYPE_1__ Q68State ;


 int JIT_PAGE_TEST (TYPE_1__*,int) ;
 int Q68_JIT_PAGE_BITS ;
 scalar_t__ UNLIKELY (int ) ;
 int q68_jit_clear_write (TYPE_1__*,int,int) ;
 int stub1 (int,int ) ;

__attribute__((used)) static inline void WRITE8(Q68State *state, uint32_t addr, uint8_t data) {
    addr &= 0xFFFFFF;





    state->writeb_func(addr, data);
}
