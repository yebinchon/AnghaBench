
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsfmt_gv_fill_array_close_open (double*,int) ;

__attribute__((used)) inline static void fill_array_close_open(double array[], int size) {
    dsfmt_gv_fill_array_close_open(array, size);
}
