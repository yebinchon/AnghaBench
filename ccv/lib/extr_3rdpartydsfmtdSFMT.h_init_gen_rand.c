
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int dsfmt_gv_init_gen_rand (int ) ;

__attribute__((used)) inline static void init_gen_rand(uint32_t seed) {
    dsfmt_gv_init_gen_rand(seed);
}
