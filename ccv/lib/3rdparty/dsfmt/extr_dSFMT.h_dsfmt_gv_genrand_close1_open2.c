
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dsfmt_genrand_close1_open2 (int *) ;
 int dsfmt_global_data ;

__attribute__((used)) inline static double dsfmt_gv_genrand_close1_open2(void) {
    return dsfmt_genrand_close1_open2(&dsfmt_global_data);
}
