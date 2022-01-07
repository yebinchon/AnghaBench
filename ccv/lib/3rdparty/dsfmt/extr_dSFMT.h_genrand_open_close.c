
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dsfmt_gv_genrand_open_close () ;

__attribute__((used)) inline static double genrand_open_close(void) {
    return dsfmt_gv_genrand_open_close();
}
