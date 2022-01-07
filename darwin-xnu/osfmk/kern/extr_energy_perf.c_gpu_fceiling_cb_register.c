
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gpu_set_fceiling_t ;


 int * gpu_set_fceiling_cb ;
 int * gpu_set_fceiling_cb_default ;

void gpu_fceiling_cb_register(gpu_set_fceiling_t gnewcb) {
 if (gnewcb != ((void*)0)) {
  gpu_set_fceiling_cb = gnewcb;
 } else {
  gpu_set_fceiling_cb = gpu_set_fceiling_cb_default;
 }
}
