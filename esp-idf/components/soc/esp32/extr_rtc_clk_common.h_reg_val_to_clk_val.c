
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UINT16_MAX ;

__attribute__((used)) static inline uint32_t reg_val_to_clk_val(uint32_t val) {
    return val & UINT16_MAX;
}
