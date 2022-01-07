
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dsfmt_gv_genrand_close1_open2 () ;

__attribute__((used)) inline static double dsfmt_gv_genrand_close_open(void) {
    return dsfmt_gv_genrand_close1_open2() - 1.0;
}
