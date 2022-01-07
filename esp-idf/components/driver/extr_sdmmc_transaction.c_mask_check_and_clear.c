
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline bool mask_check_and_clear(uint32_t* state, uint32_t mask) {
    bool ret = ((*state) & mask) != 0;
    *state &= ~mask;
    return ret;
}
