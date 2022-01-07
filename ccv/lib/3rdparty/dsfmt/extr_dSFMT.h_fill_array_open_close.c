
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsfmt_gv_fill_array_open_close (double*,int) ;

__attribute__((used)) inline static void fill_array_open_close(double array[], int size) {
    dsfmt_gv_fill_array_open_close(array, size);
}
