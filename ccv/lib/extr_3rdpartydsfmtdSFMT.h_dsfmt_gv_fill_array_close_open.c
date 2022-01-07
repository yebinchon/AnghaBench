
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsfmt_fill_array_close_open (int *,double*,int) ;
 int dsfmt_global_data ;

__attribute__((used)) inline static void dsfmt_gv_fill_array_close_open(double array[], int size) {
    dsfmt_fill_array_close_open(&dsfmt_global_data, array, size);
}
