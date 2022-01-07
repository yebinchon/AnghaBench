
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dsfmt_genrand_open_open (int *) ;
 int dsfmt_global_data ;

__attribute__((used)) inline static double dsfmt_gv_genrand_open_open(void) {
    return dsfmt_genrand_open_open(&dsfmt_global_data);
}
